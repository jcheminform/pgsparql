/*
 * https://www.w3.org/TR/xmlschema11-2/#long
 * https://www.w3.org/TR/xpath-functions/#casting-to-integer
 */
#include <postgres.h>
#include <utils/builtins.h>
#include <utils/numeric.h>
#include <utils/int8.h>
#include "rdfbox.h"
#include "call.h"
#include "try-catch.h"


PG_FUNCTION_INFO_V1(cast_as_long_from_boolean);
Datum cast_as_long_from_boolean(PG_FUNCTION_ARGS)
{
    bool value = PG_GETARG_BOOL(0);
    PG_RETURN_INT64(value ? 1l : 0l);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_short);
Datum cast_as_long_from_short(PG_FUNCTION_ARGS)
{
    int16 value = PG_GETARG_INT16(0);
    PG_RETURN_INT64(value);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_int);
Datum cast_as_long_from_int(PG_FUNCTION_ARGS)
{
    int32 value = PG_GETARG_INT32(0);
    PG_RETURN_INT64(value);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_float);
Datum cast_as_long_from_float(PG_FUNCTION_ARGS)
{
    float4 value = PG_GETARG_FLOAT4(0);
    float4 truncated = truncf(value);
    int64 result = (int64) truncated;

    if((float4) result != truncated)
        PG_RETURN_NULL();

    PG_RETURN_INT64(result);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_double);
Datum cast_as_long_from_double(PG_FUNCTION_ARGS)
{
    float8 value = PG_GETARG_FLOAT8(0);
    float8 truncated = trunc(value);
    int64 result = (int64) truncated;

    if((float8) result != truncated)
        PG_RETURN_NULL();

    PG_RETURN_INT64(result);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_integer);
Datum cast_as_long_from_integer(PG_FUNCTION_ARGS)
{
    Numeric value = PG_GETARG_NUMERIC(0);
    bool isnull = false;
    Datum result;

    PG_TRY_EX();
    {
        result = DirectFunctionCall1(numeric_int8, NumericGetDatum(value));
    }
    PG_CATCH_EX();
    {
        if(sqlerrcode != ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE)
            PG_RE_THROW_EX();

        isnull = true;
    }
    PG_END_TRY_EX();

    PG_FREE_IF_COPY(value, 0);

    if(isnull)
        PG_RETURN_NULL();

    PG_RETURN_DATUM(result);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_decimal);
Datum cast_as_long_from_decimal(PG_FUNCTION_ARGS)
{
    Numeric value = PG_GETARG_NUMERIC(0);
    bool isnull = false;
    Datum result;

    Numeric truncated = DatumGetNumeric(DirectFunctionCall2(numeric_trunc, NumericGetDatum(value), Int32GetDatum(0)));

    PG_TRY_EX();
    {
        result = DirectFunctionCall1(numeric_int8, NumericGetDatum(truncated));
    }
    PG_CATCH_EX();
    {
        if(sqlerrcode != ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE)
            PG_RE_THROW_EX();

        isnull = true;
    }
    PG_END_TRY_EX();

    pfree(truncated);
    PG_FREE_IF_COPY(value, 0);

    if(isnull)
        PG_RETURN_NULL();

    PG_RETURN_DATUM(result);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_string);
Datum cast_as_long_from_string(PG_FUNCTION_ARGS)
{
    text *value = PG_GETARG_TEXT_P(0);
    int64 result;

    char *cstring = text_to_cstring(value);
    bool isnull = !scanint8(cstring, true, &result);

    pfree(cstring);
    PG_FREE_IF_COPY(value, 0);

    if(isnull)
        PG_RETURN_NULL();

    PG_RETURN_INT64(result);
}


PG_FUNCTION_INFO_V1(cast_as_long_from_rdfbox);
Datum cast_as_long_from_rdfbox(PG_FUNCTION_ARGS)
{
    RdfBox *box = PG_GETARG_RDFBOX_P(0);
    NullableDatum result = { .isnull = false };

    switch(box->type)
    {
        case XSD_BOOLEAN:
            result = NullableFunctionCall1(cast_as_long_from_boolean, BoolGetDatum(((RdfBoxBoolean *) box)->value));
            break;

        case XSD_SHORT:
            result = NullableFunctionCall1(cast_as_long_from_short, Int16GetDatum(((RdfBoxShort *) box)->value));
            break;

        case XSD_INT:
            result = NullableFunctionCall1(cast_as_long_from_int, Int32GetDatum(((RdfBoxInt *) box)->value));
            break;

        case XSD_LONG:
            result.value = Int64GetDatum(((RdfBoxLong *) box)->value);
            break;

        case XSD_FLOAT:
            result = NullableFunctionCall1(cast_as_long_from_float, Float4GetDatum(((RdfBoxFloat *) box)->value));
            break;

        case XSD_DOUBLE:
            result = NullableFunctionCall1(cast_as_long_from_double, Float8GetDatum(((RdfBoxDouble *) box)->value));
            break;

        case XSD_INTEGER:
            result = NullableFunctionCall1(cast_as_long_from_integer, NumericGetDatum(((RdfBoxDecinal *) box)->value));
            break;

        case XSD_DECIMAL:
            result = NullableFunctionCall1(cast_as_long_from_decimal, NumericGetDatum(((RdfBoxDecinal *) box)->value));
            break;

        case XSD_STRING:
            result = NullableFunctionCall1(cast_as_long_from_string, PointerGetDatum(((RdfBoxString *) box)->value));
            break;

        default:
            result.isnull = true;
            break;
    }

    PG_FREE_IF_COPY(box, 0);

    if(result.isnull)
        PG_RETURN_NULL();

    PG_RETURN_DATUM(result.value);
}

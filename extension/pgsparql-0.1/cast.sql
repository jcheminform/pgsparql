-- cast as boolean
CREATE FUNCTION "cast_as_boolean_from_short"(int2) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_int"(int4) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_long"(int8) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_float"(float4) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_double"(float8) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_integer"(decimal) RETURNS bool AS 'MODULE_PATHNAME','cast_as_boolean_from_decimal' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_decimal"(decimal) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_string"(varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_boolean_from_rdfbox"(rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as short
CREATE FUNCTION "cast_as_short_from_boolean"(bool) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_int"(int4) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_long"(int8) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_float"(float4) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_double"(float8) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_integer"(decimal) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_decimal"(decimal) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_string"(varchar) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_short_from_rdfbox"(rdfbox) RETURNS int2 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as int
CREATE FUNCTION "cast_as_int_from_boolean"(bool) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_short"(int2) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_long"(int8) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_float"(float4) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_double"(float8) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_integer"(decimal) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_decimal"(decimal) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_string"(varchar) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_int_from_rdfbox"(rdfbox) RETURNS int4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as long
CREATE FUNCTION "cast_as_long_from_boolean"(bool) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_short"(int2) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_int"(int4) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_float"(float4) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_double"(float8) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_integer"(decimal) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_decimal"(decimal) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_string"(varchar) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_long_from_rdfbox"(rdfbox) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as float
CREATE FUNCTION "cast_as_float_from_boolean"(bool) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_short"(int2) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_int"(int4) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_long"(int8) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_double"(float8) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_integer"(decimal) RETURNS float4 AS 'MODULE_PATHNAME','cast_as_float_from_decimal' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_decimal"(decimal) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_string"(varchar) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_float_from_rdfbox"(rdfbox) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as double
CREATE FUNCTION "cast_as_double_from_boolean"(bool) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_short"(int2) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_int"(int4) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_long"(int8) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_float"(float4) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_integer"(decimal) RETURNS float8 AS 'MODULE_PATHNAME','cast_as_double_from_decimal' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_decimal"(decimal) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_string"(varchar) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_double_from_rdfbox"(rdfbox) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as integer
CREATE FUNCTION "cast_as_integer_from_boolean"(bool) RETURNS decimal AS 'MODULE_PATHNAME','cast_as_decimal_from_boolean' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_short"(int2) RETURNS decimal AS 'MODULE_PATHNAME','cast_as_decimal_from_short' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_int"(int4) RETURNS decimal AS 'MODULE_PATHNAME','cast_as_decimal_from_int' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_long"(int8) RETURNS decimal AS 'MODULE_PATHNAME','cast_as_decimal_from_long' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_float"(float4) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_double"(float8) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_decimal"(decimal) RETURNS decimal AS 'MODULE_PATHNAME','cast_as_decimal_from_integer' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_string"(varchar) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_integer_from_rdfbox"(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as decimal
CREATE FUNCTION "cast_as_decimal_from_boolean"(bool) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_short"(int2) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_int"(int4) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_long"(int8) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_float"(float4) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_double"(float8) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_integer"(decimal) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_string"(varchar) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_decimal_from_rdfbox"(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as datetime
CREATE FUNCTION "cast_as_datetime_from_date"(zoneddate) RETURNS zoneddatetime AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_datetime_from_string"(varchar) RETURNS zoneddatetime AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_datetime_from_rdfbox"(rdfbox) RETURNS zoneddatetime AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as date
CREATE FUNCTION "cast_as_date_from_datetime"(zoneddatetime) RETURNS zoneddate AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_date_from_string"(varchar) RETURNS zoneddate AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_date_from_rdfbox"(rdfbox) RETURNS zoneddate AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as daytimeduration
CREATE FUNCTION "cast_as_daytimeduration_from_string"(varchar) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_daytimeduration_from_rdfbox"(rdfbox) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as string
CREATE FUNCTION "cast_as_string_from_boolean"(bool) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_short"(int2) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_int"(int4) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_long"(int8) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_float"(float4) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_double"(float8) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_integer"(decimal) RETURNS varchar AS 'MODULE_PATHNAME','cast_as_rdfbox_from_decimal' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_decimal"(decimal) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_datetime"(zoneddatetime) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_date"(zoneddate) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_daytimeduration"(int8) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_string_from_rdfbox"(rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- cast as rdfbox
CREATE FUNCTION "cast_as_rdfbox_from_boolean"(bool) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_short"(int2) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_int"(int4) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_long"(int8) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_float"(float4) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_double"(float8) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_integer"(decimal) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_decimal"(decimal) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_datetime"(zoneddatetime) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_date"(zoneddate) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_daytimeduration"(int8) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_string"(varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

CREATE FUNCTION "cast_as_rdfbox_from_iri"(varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_lang_string"(varchar, varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_typed_literal"(varchar, varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_int_blanknode"(int8) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION "cast_as_rdfbox_from_str_blanknode"(varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

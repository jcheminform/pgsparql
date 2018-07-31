-- functional forms
CREATE FUNCTION same_term_rdfbox(rdfbox,rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- functions on RDF terms
CREATE SEQUENCE query_blanknode;
CREATE FUNCTION is_bound(anyelement) RETURNS bool AS $$ SELECT CASE WHEN $1 IS NOT NULL THEN true ELSE NULL END $$ LANGUAGE SQL IMMUTABLE STRICT;
CREATE FUNCTION is_iri_rdfbox(rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION is_blank_rdfbox(rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION is_literal_rdfbox(rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION is_numeric_rdfbox(rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION lang_rdfbox(rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION datatype_rdfbox(rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION iri_string(varchar,varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION iri_rdfbox(varchar,rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION bnode() RETURNS int8 AS $$ select nextval('query_blanknode') % (2^32)::int8; $$ LANGUAGE SQL VOLATILE STRICT;
CREATE FUNCTION uuid() RETURNS varchar AS $$ select 'urn:uuid:' || uuid_generate_v4(); $$ LANGUAGE SQL VOLATILE STRICT;
CREATE FUNCTION struuid() RETURNS varchar AS $$ select uuid_generate_v4()::varchar; $$ LANGUAGE SQL VOLATILE STRICT;

-- functions on strings
CREATE FUNCTION strlen_string(varchar) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strlen_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION substr_string(varchar,decimal) RETURNS varchar AS 'MODULE_PATHNAME','substr_no_len_string' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION substr_string(varchar,decimal,decimal) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION substr_rdfbox(rdfbox,decimal) RETURNS rdfbox AS 'MODULE_PATHNAME','substr_no_len_rdfbox' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION substr_rdfbox(rdfbox,decimal,decimal) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ucase_string(varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ucase_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION lcase_string(varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION lcase_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strstarts_string_string(varchar,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strstarts_rdfbox_string(rdfbox,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strstarts_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strends_string_string(varchar,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strends_rdfbox_string(rdfbox,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strends_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION contains_string_string(varchar,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION contains_rdfbox_string(rdfbox,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION contains_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strbefore_string_string(varchar,varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strbefore_rdfbox_string(rdfbox,varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strbefore_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strafter_string_string(varchar,varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strafter_rdfbox_string(rdfbox,varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION strafter_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION encode_for_uri_string(varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION encode_for_uri_rdfbox(rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION concat_string_string(varchar,varchar) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION concat_rdfbox_string(rdfbox,varchar) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION concat_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION langmatches_string_string(varchar,varchar) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION langmatches_rdfbox_rdfbox(rdfbox,rdfbox) RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- functions using regular expressions
CREATE FUNCTION regex_string(varchar,varchar,varchar='') RETURNS bool AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION replace_string(varchar,varchar,varchar,varchar='') RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- functions on numerics
CREATE FUNCTION abs_float(float4) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION abs_double(float8) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION abs_integer(decimal) RETURNS decimal AS 'MODULE_PATHNAME','abs_decimal' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION abs_decimal(decimal) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION abs_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION round_float(float4) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION round_double(float8) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION round_decimal(decimal) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION round_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ceil_float(float4) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ceil_double(float8) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ceil_decimal(decimal) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION ceil_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION floor_float(float4) RETURNS float4 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION floor_double(float8) RETURNS float8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION floor_decimal(decimal) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION floor_rdfbox(rdfbox) RETURNS rdfbox AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION rand() RETURNS float8 AS $$ select random(); $$ LANGUAGE SQL VOLATILE STRICT;

-- functions on dates and times
CREATE FUNCTION year_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION year_date(zoneddate) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION year_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION month_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION month_date(zoneddate) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION month_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION day_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION day_date(zoneddate) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION day_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION hours_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION hours_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION minutes_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION minutes_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION seconds_datetime(zoneddatetime) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION seconds_rdfbox(rdfbox) RETURNS decimal AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION timezone_datetime(zoneddatetime) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION timezone_date(zoneddate) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION timezone_rdfbox(rdfbox) RETURNS int8 AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION tz_datetime(zoneddatetime) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION tz_date(zoneddate) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION tz_rdfbox(rdfbox) RETURNS varchar AS 'MODULE_PATHNAME' LANGUAGE C IMMUTABLE STRICT;

-- hash functions
CREATE FUNCTION md5_string(varchar) RETURNS varchar AS $$ select substring(digest($1,'md5')::varchar from 3); $$ LANGUAGE SQL IMMUTABLE STRICT;
CREATE FUNCTION sha1_string(varchar) RETURNS varchar AS $$ select substring(digest($1,'sha1')::varchar from 3); $$ LANGUAGE SQL IMMUTABLE STRICT;
CREATE FUNCTION sha256_string(varchar) RETURNS varchar AS $$ select substring(digest($1,'sha256')::varchar from 3); $$ LANGUAGE SQL IMMUTABLE STRICT;
CREATE FUNCTION sha384_string(varchar) RETURNS varchar AS $$ select substring(digest($1,'sha384')::varchar from 3); $$ LANGUAGE SQL IMMUTABLE STRICT;
CREATE FUNCTION sha512_string(varchar) RETURNS varchar AS $$ select substring(digest($1,'sha512')::varchar from 3); $$ LANGUAGE SQL IMMUTABLE STRICT;

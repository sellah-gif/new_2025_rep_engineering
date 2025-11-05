{% macro ETL_123(args) %}
    {% set MY_PIPE %}
    copy into MY_ETL_T 
    from @MY_EXT_STAGE_123
    ON_ERROR =CONTINUE
    FORCE=TRUE
    {% endset %}
    {% do run_query(MY_PIPE) %}  

{% endmacro %}


{% macro margin_percent(revenue, purchase_cost) %}
  {{ ( (revenue - purchase_cost) / revenue * 100) | round(2) }}
{% endmacro %}


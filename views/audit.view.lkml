# The name of this view in Looker is "Audit"
view: audit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `UK_accidents_0515.audit`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Avr Length" in Explore.

  dimension: _avr_length {
    type: number
    sql: ${TABLE}._avr_length ;;
  }

  dimension: _max_length {
    type: number
    sql: ${TABLE}._max_length ;;
  }

  dimension: _min_length {
    type: number
    sql: ${TABLE}._min_length ;;
  }

  dimension: average_value {
    type: string
    sql: ${TABLE}.average_value ;;
  }

  dimension: clustering_ordinal_position {
    type: number
    sql: ${TABLE}.clustering_ordinal_position ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: count_distinct_values {
    type: number
    sql: ${TABLE}.count_distinct_values ;;
  }

  dimension: count_not_nulls {
    type: number
    sql: ${TABLE}.count_not_nulls ;;
  }

  dimension: count_nulls {
    type: number
    sql: ${TABLE}.count_nulls ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: is_hidden {
    type: string
    sql: ${TABLE}.is_hidden ;;
  }

  dimension: is_not_nullable_column {
    type: yesno
    sql: ${TABLE}.is_not_nullable_column ;;
  }

  dimension: is_partitioning_column {
    type: string
    sql: ${TABLE}.is_partitioning_column ;;
  }

  dimension: is_recommended_not_nullable_column {
    type: yesno
    sql: ${TABLE}.is_recommended_not_nullable_column ;;
  }

  dimension: is_recommended_unique_column {
    type: yesno
    sql: ${TABLE}.is_recommended_unique_column ;;
  }

  dimension: is_system_defined {
    type: string
    sql: ${TABLE}.is_system_defined ;;
  }

  dimension: max_value {
    type: string
    sql: ${TABLE}.max_value ;;
  }

  dimension: min_value {
    type: string
    sql: ${TABLE}.min_value ;;
  }

  dimension: most_frequent_value {
    type: string
    sql: ${TABLE}.most_frequent_value ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ordinal_position ;;
  }

  dimension: percentage_not_null_values {
    type: number
    sql: ${TABLE}.percentage_not_null_values ;;
  }

  dimension: percentage_unique_values {
    type: number
    sql: ${TABLE}.percentage_unique_values ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: profiled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.profiled_time ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.table_catalog ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: table_rows {
    type: number
    sql: ${TABLE}.table_rows ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.table_schema ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [table_name, column_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total__avr_length {
    type: sum
    hidden: yes
    sql: ${_avr_length} ;;
  }

  measure: average__avr_length {
    type: average
    hidden: yes
    sql: ${_avr_length} ;;
  }

  measure: total__max_length {
    type: sum
    hidden: yes
    sql: ${_max_length} ;;
  }

  measure: average__max_length {
    type: average
    hidden: yes
    sql: ${_max_length} ;;
  }

  measure: total__min_length {
    type: sum
    hidden: yes
    sql: ${_min_length} ;;
  }

  measure: average__min_length {
    type: average
    hidden: yes
    sql: ${_min_length} ;;
  }

  measure: total_clustering_ordinal_position {
    type: sum
    hidden: yes
    sql: ${clustering_ordinal_position} ;;
  }

  measure: average_clustering_ordinal_position {
    type: average
    hidden: yes
    sql: ${clustering_ordinal_position} ;;
  }

  measure: total_count_distinct_values {
    type: sum
    hidden: yes
    sql: ${count_distinct_values} ;;
  }

  measure: average_count_distinct_values {
    type: average
    hidden: yes
    sql: ${count_distinct_values} ;;
  }

  measure: total_count_not_nulls {
    type: sum
    hidden: yes
    sql: ${count_not_nulls} ;;
  }

  measure: average_count_not_nulls {
    type: average
    hidden: yes
    sql: ${count_not_nulls} ;;
  }

  measure: total_count_nulls {
    type: sum
    hidden: yes
    sql: ${count_nulls} ;;
  }

  measure: average_count_nulls {
    type: average
    hidden: yes
    sql: ${count_nulls} ;;
  }

  measure: total_ordinal_position {
    type: sum
    hidden: yes
    sql: ${ordinal_position} ;;
  }

  measure: average_ordinal_position {
    type: average
    hidden: yes
    sql: ${ordinal_position} ;;
  }

  measure: total_percentage_not_null_values {
    type: sum
    hidden: yes
    sql: ${percentage_not_null_values} ;;
  }

  measure: average_percentage_not_null_values {
    type: average
    hidden: yes
    sql: ${percentage_not_null_values} ;;
  }

  measure: total_percentage_unique_values {
    type: sum
    hidden: yes
    sql: ${percentage_unique_values} ;;
  }

  measure: average_percentage_unique_values {
    type: average
    hidden: yes
    sql: ${percentage_unique_values} ;;
  }

  measure: total_table_rows {
    type: sum
    hidden: yes
    sql: ${table_rows} ;;
  }

  measure: average_table_rows {
    type: average
    hidden: yes
    sql: ${table_rows} ;;
  }
}

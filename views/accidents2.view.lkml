# The name of this view in Looker is "Accidents2"
view: accidents2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `UK_accidents_0515.accidents2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " 1st Road Class" in Explore.

  dimension: _1st_road_class {
    type: number
    sql: ${TABLE}._1st_Road_Class ;;
  }

  dimension: _1st_road_number {
    type: number
    sql: ${TABLE}._1st_Road_Number ;;
  }

  dimension: _2nd_road_class {
    type: number
    sql: ${TABLE}._2nd_Road_Class ;;
  }

  dimension: _2nd_road_number {
    type: number
    sql: ${TABLE}._2nd_Road_Number ;;
  }

  dimension: accident_index {
    type: string
    sql: ${TABLE}.Accident_Index ;;
  }

  dimension: accident_severity {
    type: number
    sql: ${TABLE}.Accident_Severity ;;
  }

  dimension: carriageway_hazards {
    type: string
    sql: ${TABLE}.Carriageway_Hazards ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.Day_of_Week ;;
  }

  dimension: did_police_officer_attend_scene_of_accident {
    type: yesno
    sql: ${TABLE}.Did_Police_Officer_Attend_Scene_of_Accident ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension_group: insertion {
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
    sql: ${TABLE}.insertion_time ;;
  }

  dimension: junction_control {
    type: string
    sql: ${TABLE}.Junction_Control ;;
  }

  dimension: junction_detail {
    type: string
    sql: ${TABLE}.Junction_Detail ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: light_conditions {
    type: string
    sql: ${TABLE}.Light_Conditions ;;
  }

  dimension: local_authority__district_ {
    type: number
    sql: ${TABLE}.Local_Authority__District_ ;;
  }

  dimension: local_authority__highway_ {
    type: string
    sql: ${TABLE}.Local_Authority__Highway_ ;;
  }

  dimension: location_easting_osgr {
    type: number
    sql: ${TABLE}.Location_Easting_OSGR ;;
  }

  dimension: location_northing_osgr {
    type: number
    sql: ${TABLE}.Location_Northing_OSGR ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: lsoa_of_accident_location {
    type: string
    sql: ${TABLE}.LSOA_of_Accident_Location ;;
  }

  dimension: number_of_casualties {
    type: number
    sql: ${TABLE}.Number_of_Casualties ;;
  }

  dimension: number_of_vehicles {
    type: number
    sql: ${TABLE}.Number_of_Vehicles ;;
  }

  dimension: pedestrian_crossing_human_control {
    type: string
    sql: ${TABLE}.Pedestrian_Crossing_Human_Control ;;
  }

  dimension: pedestrian_crossing_physical_facilities {
    type: string
    sql: ${TABLE}.Pedestrian_Crossing_Physical_Facilities ;;
  }

  dimension: police_force {
    type: number
    sql: ${TABLE}.Police_Force ;;
  }

  dimension: road_surface_conditions {
    type: string
    sql: ${TABLE}.Road_Surface_Conditions ;;
  }

  dimension: road_type {
    type: string
    sql: ${TABLE}.Road_Type ;;
  }

  dimension: special_conditions_at_site {
    type: string
    sql: ${TABLE}.Special_Conditions_at_Site ;;
  }

  dimension: speed_limit {
    type: number
    sql: ${TABLE}.Speed_limit ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: urban_or_rural_area {
    type: number
    sql: ${TABLE}.Urban_or_Rural_Area ;;
  }

  dimension: weather_conditions {
    type: string
    sql: ${TABLE}.Weather_Conditions ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [filename]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total__1st_road_class {
    type: sum
    hidden: yes
    sql: ${_1st_road_class} ;;
  }

  measure: average__1st_road_class {
    type: average
    hidden: yes
    sql: ${_1st_road_class} ;;
  }

  measure: total__1st_road_number {
    type: sum
    hidden: yes
    sql: ${_1st_road_number} ;;
  }

  measure: average__1st_road_number {
    type: average
    hidden: yes
    sql: ${_1st_road_number} ;;
  }

  measure: total__2nd_road_class {
    type: sum
    hidden: yes
    sql: ${_2nd_road_class} ;;
  }

  measure: average__2nd_road_class {
    type: average
    hidden: yes
    sql: ${_2nd_road_class} ;;
  }

  measure: total__2nd_road_number {
    type: sum
    hidden: yes
    sql: ${_2nd_road_number} ;;
  }

  measure: average__2nd_road_number {
    type: average
    hidden: yes
    sql: ${_2nd_road_number} ;;
  }

  measure: total_accident_severity {
    type: sum
    hidden: yes
    sql: ${accident_severity} ;;
  }

  measure: average_accident_severity {
    type: average
    hidden: yes
    sql: ${accident_severity} ;;
  }

  measure: total_day_of_week {
    type: sum
    hidden: yes
    sql: ${day_of_week} ;;
  }

  measure: average_day_of_week {
    type: average
    hidden: yes
    sql: ${day_of_week} ;;
  }

  measure: total_latitude {
    type: sum
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: total_local_authority__district_ {
    type: sum
    hidden: yes
    sql: ${local_authority__district_} ;;
  }

  measure: average_local_authority__district_ {
    type: average
    hidden: yes
    sql: ${local_authority__district_} ;;
  }

  measure: total_location_easting_osgr {
    type: sum
    hidden: yes
    sql: ${location_easting_osgr} ;;
  }

  measure: average_location_easting_osgr {
    type: average
    hidden: yes
    sql: ${location_easting_osgr} ;;
  }

  measure: total_location_northing_osgr {
    type: sum
    hidden: yes
    sql: ${location_northing_osgr} ;;
  }

  measure: average_location_northing_osgr {
    type: average
    hidden: yes
    sql: ${location_northing_osgr} ;;
  }

  measure: total_longitude {
    type: sum
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_longitude {
    type: average
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: total_number_of_casualties {
    type: sum
    hidden: yes
    sql: ${number_of_casualties} ;;
  }

  measure: average_number_of_casualties {
    type: average
    hidden: yes
    sql: ${number_of_casualties} ;;
  }

  measure: total_number_of_vehicles {
    type: sum
    hidden: yes
    sql: ${number_of_vehicles} ;;
  }

  measure: average_number_of_vehicles {
    type: average
    hidden: yes
    sql: ${number_of_vehicles} ;;
  }

  measure: total_police_force {
    type: sum
    hidden: yes
    sql: ${police_force} ;;
  }

  measure: average_police_force {
    type: average
    hidden: yes
    sql: ${police_force} ;;
  }

  measure: total_speed_limit {
    type: sum
    hidden: yes
    sql: ${speed_limit} ;;
  }

  measure: average_speed_limit {
    type: average
    hidden: yes
    sql: ${speed_limit} ;;
  }

  measure: total_urban_or_rural_area {
    type: sum
    hidden: yes
    sql: ${urban_or_rural_area} ;;
  }

  measure: average_urban_or_rural_area {
    type: average
    hidden: yes
    sql: ${urban_or_rural_area} ;;
  }

  measure: total_year {
    type: sum
    hidden: yes
    sql: ${year} ;;
  }

  measure: average_year {
    type: average
    hidden: yes
    sql: ${year} ;;
  }
}

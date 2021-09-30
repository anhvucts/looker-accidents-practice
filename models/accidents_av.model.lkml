# Define the database connection to be used for this model.
connection: "accidents_sample"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: accidents_av_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: accidents_av_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Accidents Av"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: days_of_week_lookup {}

explore: local_authority_district {}

explore: accidents_with_city {
  hidden: yes
}

explore: audit {}

explore: local_authority_highway {}

explore: accidents_with_city_tbl {
  hidden: yes
}

explore: accidents {
  label: "Accidents data"
  description: "Insights on accidents' statistics"
  join: accidents_with_city {
    sql_on: ${accidents.accident_index}  = ${accidents_with_city.accident_index};;
    relationship: one_to_one
    type: left_outer
  }
}

explore: accidents2 {
  hidden: yes
}

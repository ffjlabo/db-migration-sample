// Define an environment named "local"
env "dev" {
  // Declare where the schema definition resides.
  src = [
    "file://ddls/users.sql",
    "file://ddls/blog_posts.sql",
  ]

  // Define the URL of the database which is managed
  // in this environment.
  url = "postgres://postgres:postgres@localhost:5432/testdb?sslmode=disable"

  // Define the URL of the Dev Database for this environment
  // See: https://atlasgo.io/concepts/dev-database
  dev = "docker://postgres/15/testdb"

  // NOTE: set it to avoid managing the schema of the table `atlas_schema_revisions` in the schema `atlas_schema_revisions`
  schemas = [
    "public",
  ]

  migration {
    dir = "file://dmls/"
  }
}

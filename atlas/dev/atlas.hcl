// Define an environment named "local"
env "dev" {
  // Declare where the schema definition resides.
  src = [
    "file://ddls/users.sql"
  ]

  // Define the URL of the database which is managed
  // in this environment.
  url = "postgres://postgres:postgres@localhost:5432/testdb?sslmode=disable"

  // Define the URL of the Dev Database for this environment
  // See: https://atlasgo.io/concepts/dev-database
  dev = "docker://postgres/15/testdb"
}

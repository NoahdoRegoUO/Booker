const Pool = require("pg").Pool

const pool = new Pool({
    user: "postgres",
    password: "gumbly456",
    host: "localhost",
    port: 5432,
    database: "postgres"
});

module.exports = pool;
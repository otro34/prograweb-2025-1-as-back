import pg from "pg"
import Sequelize from 'sequelize'

// Use environment variables with fallbacks for local development
const hostname = process.env.DB_HOST || 'prograweb-bd-jcromaina-2025-1.postgres.database.azure.com';
const username = process.env.DB_USERNAME || 'postgres';
const password = process.env.DB_PASSWORD || 'Password!';
const database = process.env.DB_NAME || 'gamesdb';
const port = process.env.DB_PORT || 5432;
const dialect = 'postgres'

const sequelize = new Sequelize(database, username, password, {
    host: hostname,
    port: port,
    dialect: dialect,
    dialectModule: pg, // Let Sequelize auto-detect the pg module
    operatorAliases: false,
    dialectOptions: {
        ssl: process.env.NODE_ENV === 'production' ? {
            require: true,
            rejectUnauthorized: false
        } : false
    },
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
    logging: process.env.NODE_ENV === 'production' ? false : console.log
})

export default sequelize;
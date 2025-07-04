import Sequelize from 'sequelize'

/*
const hostname = 'localhost';
const username = 'postgres';
const password = '123';
const database = 'gamesdb';
const port = 5432;
const dialect = 'postgres'
*/

const hostname = 'prograweb-bd-jcromaina-2025-1.postgres.database.azure.com';
const username = 'postgres';
const password = 'Password!';
const database = 'gamesdb';
const port = 5432;
const dialect = 'postgres'

const sequelize = new Sequelize(database, username, password, {
    host: hostname,
    port: port,
    dialect: dialect,
    operatorAliases: false
})

export default sequelize;
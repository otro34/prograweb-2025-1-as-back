import sequelize from "../config/database.js";
import { DataTypes } from 'sequelize'

const Game = sequelize.define('game', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    precio: {
        type: DataTypes.DOUBLE,
        allowNull: false
    },
    precioConDescuento: {
        type: DataTypes.DOUBLE,
        allowNull: false
    },
    porcentajeDescuento: {
        type: DataTypes.DOUBLE,
        allowNull: false
    },
    publisher: {
        type: DataTypes.STRING,
        allowNull: false
    },
    genero: {
        type: DataTypes.STRING,
        allowNull: false
    },
    caracteristicas: {
        type: DataTypes.STRING,
        allowNull: false
    },
    descripcion: {
        type: DataTypes.STRING(2000),
        allowNull: false
    },
    jugarCon: {
        type: DataTypes.STRING,
        allowNull: false
    },
    funcionalidades: {
        type: DataTypes.STRING,
        allowNull: false
    },
    img: {
        type: DataTypes.STRING,
        allowNull: false
    },
    imgThumb: {
        type: DataTypes.STRING,
        allowNull: false
    },

})

export default Game;
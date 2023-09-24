// importo sequalize
const {sequelize} = require ("../../database")

// defino tipo de de datos 
const {DataTypes} = require('sequelize')

// creacion de la tabla
const PostModel = sequelize.define("posts",{
    title: DataTypes.STRING,  //Hasta 256 caracteres
    content : DataTypes.TEXT, // Textos de mas de 256 caracteres
    imglink : DataTypes.TEXT, // Url mas largas de 256 caracteres

})

module.exports ={PostModel}
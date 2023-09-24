//importo express desde express
const express = require ('express')
const cors = require ('cors')
const morgan = require ('morgan')  
const {sequelize} = require ("./database")
require("./src/model/Posts")

//creamos un servidor
const app = express ()

//middlewares
app.use(express.json())
app.use(cors())
app.use(morgan("dev"))

//Archivos de vistas en otro nivel de carpetas
app.set("views", __dirname + "/src/views")

app.use(express.static("public"))

//Setup del motor de plantillas
app.set("view engine", "ejs")

//Utilizamos el enrutador
app.use("/posts",require("./routes/posts.routes"))

//escucha en port 4000, pasamos un callback
app.listen(4000,()=>{
    /* sequelize.authenticate() */
    sequelize.sync({force:false}) // true: para la creacion de los campos de la BD
    console.log("Server running on port 4000 ...");
})

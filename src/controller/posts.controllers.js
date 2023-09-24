//con el modelo obtenemos todas las notas
const {PostModel} = require("../model/Posts")

const getAllPosts = async (req, res) => {
    const allPosts = await PostModel.findAll()
    
    res.render("index", {allPosts})
}

const createNewPost = async (req, res) => {}

module.exports = {getAllPosts, createNewPost}
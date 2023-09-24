//con el modelo obtenemos todas las notas
const {PostModel} = require("../model/Posts")

const getAllPosts = async (req, res) => {
    const allPosts = await PostModel.findAll()

    res.render("index", {allPosts})
}

const formCreateNewPost = async (req, res) => {
    res.render("new-post")
}

const createPost = async (req,res) =>{
    const {title, content, imglink } = req.body
    await PostModel.create({title, content, imglink } )
   /*  res.send ("Post created successfully") */
   res.redirect("/posts")

}

module.exports = {getAllPosts, formCreateNewPost, createPost}
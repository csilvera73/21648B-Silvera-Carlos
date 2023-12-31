//con el modelo obtenemos todas las notas
const {PostModel} = require("../model/Posts")

//Controladores para renderizar páginas
const getAllPosts = async (req, res) => {
    const allPosts = await PostModel.findAll()

    res.render("index", {allPosts})
}

const formCreateNewPost = async (req, res) => {
    res.render("new-post")
}

const formUpdatePost = async (req, res)=> {
     const postId =req.params.id  // capturo el parametro dinamico

     const post = await PostModel.findByPk(postId) //Busqueda por primary key

     //Si no existe el Id, redirecciono al /posts
     if (!post) {
        return res.redirect("/posts")
     }

    res.render("update-post", {post})
}

// Controladores que efectuan caqmbios en la Base de Datos y redireccionan
const createPost = async (req,res) =>{
    const {title, content, imglink } = req.body
    await PostModel.create({title, content, imglink } )
   /*  res.send ("Post created successfully") */
   res.redirect("/posts")
}

const updatePost = async (req,res) =>{
    const {id, title, content, imglink } = req.body

    const post = await PostModel.findByPk(id)

    await post.update({title, content, imglink })
    
   res.redirect("/posts")
}

const deletePost = async (req,res) =>{
    const postId =req.params.id  // capturo el parametro dinamico

    const post = await PostModel.findByPk(postId)
    
    await post.destroy()
    
    res.redirect("/posts")
}

module.exports = {getAllPosts, formCreateNewPost, createPost, formUpdatePost, updatePost, deletePost}
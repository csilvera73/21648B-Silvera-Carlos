const {Router} = require("express")
const { getAllPosts, formCreateNewPost, formUpdatePost, createPost, updatePost, deletePost } = require("../src/controller/posts.controllers")


const router = Router()

router.get("/", getAllPosts)
router.get("/create", formCreateNewPost)
router.get("/update/:id", formUpdatePost)  // ruta con parametro dinamico
router.get("/delete/:id", deletePost)  // ruta con parametro dinamico


router.post("/", createPost)
router.post("/update", updatePost)

module.exports = router

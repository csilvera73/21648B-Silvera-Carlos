const {Router} = require("express")
const { getAllPosts, formCreateNewPost, createPost } = require("../src/controller/posts.controllers")


const router = Router()

router.get("/", getAllPosts)
router.get("/create", formCreateNewPost)
router.post("/", createPost)

module.exports = router

const {Router} = require("express")
const { getAllPosts, createNewPost } = require("../src/controller/posts.controllers")


const router = Router()

router.get("/", getAllPosts)
router.get("/create", createNewPost)

module.exports = router

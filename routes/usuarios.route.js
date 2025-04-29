const express = require("express");
const router = express.Router();

router.post('/login', ()=>{console.log("Rota de login")});
router.post('/', usuariosController.cadastrarUsuario);
router.put('/:id', usuariosController.atualizarUsuario);

module.exports = router;


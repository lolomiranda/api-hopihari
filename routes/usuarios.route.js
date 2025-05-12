const express = require("express");
const router = express.Router();
const usuariosCotroller = require("../controllers/usuarios.controller");

router.post('/login', usuariosCotroller.login);
router.post('/', usuariosCotroller.cadastrarUsuario);
router.put('/:id', usuariosCotroller.atualizarUsuario);

module.exports = router;


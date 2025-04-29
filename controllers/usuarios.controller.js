const mysql = require("../mysql");

exports.atualizarUsuario = async (req, res) => {
    try{
       const idUsuario = Number(req.params.id); 
       const resultado = await mysql.execute(
         `update users
             set name = ?,
               email = ?,
               password = ?
             where id = ?;`,
          [
            req.body.name,
            req.body.email, 
            req.body.password,
            idUsuario
          ]
       );

       return res.status(201).send({"Mensagem": "Usuario atualizado com sucesso",
       "Resultado": Resultado
       });

    }catch (error) {
      return res.status(500).send({"Mensagem": error});
    }
}

exports.cadastrarUsuario = async (req, res) => {
    try{
        const resultado = await mysql.execute(
          `insert into users (name,email,password)
            values (
               name = ?,
               email = ?,
               password = ?)`
            [
             req.body.name,
             req.body.email,
             req.body.password
            ]
        );

        return res.status(201).send ({"mensagem": "usuario cadastrado com sucesso",
            "resultado": resultado
        });
    }catch (error) {
        return res.status(500).send({"Mensagem": error});
    }
}

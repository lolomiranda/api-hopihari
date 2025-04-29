const mysql2 = require('mysql2');

const connection = mysql2.createConnection({
    host: "localhost",
    user: "root",
    passaword:"root",
    port: 3307,
    database: "hopihari_dbx"
});

exports.execute = (query, params = [], pool = pool) => {
    return new Promise((resolve, reject) => {
        pool.query(query, params, (eror, results)=> {
            if (error) {
             reject (error);
            } else {
                resolve(results);
            }

        });
    });
}
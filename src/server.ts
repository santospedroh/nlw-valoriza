import express from "express";

// @types/express
const app = express();

/**
 * Metodos HTTP
 * 
 * GET   => Buscar uma informação
 * POST  => Inserir (criar) uma informação
 * PUT   => Alterar uma informação
 * DELET => Deletar uma informação
 * PATCH => Alterar uma informação específica
 * 
 */

app.get("/test", (request, response) => {
    // Resquet   => Entrando
    // Respoonse => Saindo
    return response.send("Olá NLW");
});

app.post("/test-post", (request, response) => {
    return response.send("Olá Post NLW");
});

//http://localhost:3000
app.listen(3000, () => console.log("Server is running"));
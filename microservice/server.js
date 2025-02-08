// Importar la librería Express
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Definir un endpoint que responda con "Hello from DevOps Challenge!"
app.get('/hello', (req, res) => {
    res.send('Hello from DevOps Challenge!');
});

// Iniciar el servidor en el puerto definido
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});

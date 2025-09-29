const express = require('express');
const app = express();
const port = 3000;

// Middleware (optional)
app.use(express.json());

// Root endpoint
app.get('/', (req, res) => {
    res.send('Hello from Node.js App deployed via CodeDeploy 🚀');
});

// Health check endpoint (for ValidateService hook)
app.get('/health', (req, res) => {
    res.status(200).send('OK');
});

// Example API endpoint
app.get('/api/info', (req, res) => {
    res.json({
        app: 'My Node.js App',
        version: '1.0.0',
        status: 'running'
    });
});

app.listen(port, () => {
    console.log(`✅ App running on http://localhost:${port}`);
});
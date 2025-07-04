import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';

import gamesRouter from './src/routes/games.js'
import usersRouter from './src/routes/users.js'
import loginRouter from './src/routes/login.js'
import sequelize from './src/config/database.js'

const app = express();

app.use(cors())
app.use(bodyParser.json())

app.get('/', (req,res) =>  {
    return res.json({message: "hellow world"})
})

// Health check endpoint
app.get('/health', async (req, res) => {
    try {
        await sequelize.authenticate();
        return res.json({ 
            status: 'healthy', 
            database: 'connected',
            timestamp: new Date().toISOString()
        });
    } catch (error) {
        return res.status(500).json({ 
            status: 'unhealthy', 
            database: 'disconnected',
            error: error.message,
            timestamp: new Date().toISOString()
        });
    }
});

app.use('/games', gamesRouter);
app.use('/users', usersRouter);
app.use('/login', loginRouter)

export default app;
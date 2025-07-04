import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';

import gamesRouter from './src/routes/games.js'
import usersRouter from './src/routes/users.js'
import loginRouter from './src/routes/login.js'

const app = express();

app.use(cors())
app.use(bodyParser.json())

app.get('/', (req,res) =>  {
    return res.json({message: "hellow world"})
})

app.use('/games', gamesRouter);
app.use('/users', usersRouter);
app.use('/login', loginRouter)

export default app;
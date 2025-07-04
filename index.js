import app from './app.js';
import sequelize from './src/config/database.js';

let isDbConnected = false;

async function connectDatabase() {
    if (!isDbConnected) {
        try {
            const init = process.argv[2];

            if (init) {
                await sequelize.sync({ force: true });
            } else {
                await sequelize.sync({ force: false });
            }
            
            console.log('Database connected successfully!');
            isDbConnected = true;
        } catch (error) {
            console.error('Database connection failed:', error);
            throw error;
        }
    }
}

// For Vercel serverless functions
export default async function handler(req, res) {
    try {
        await connectDatabase();
        return app(req, res);
    } catch (error) {
        console.error('Handler error:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
}

// For local development
async function main() {
    try {
        await connectDatabase();
        
        const port = process.env.PORT || 3001;

        app.listen(port, () => {
            console.log('Server is running on port ' + port);
        });

    } catch (error) {
        console.error('Server startup error:', error);
    }
}

// Only run main() if this file is executed directly (not imported)
if (process.env.NODE_ENV !== 'production') {
    main();
}



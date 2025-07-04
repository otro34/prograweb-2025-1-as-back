# prograweb-2025-1-as-back

A Node.js/Express REST API backend with PostgreSQL database using Sequelize ORM.

## Features

- RESTful API endpoints for games, users, and authentication
- PostgreSQL database with Sequelize ORM
- CORS enabled for cross-origin requests
- Ready for deployment on Vercel

## API Endpoints

- `GET /` - Health check
- `GET /games` - Get all games
- `GET /games/:id` - Get specific game
- `POST /games` - Create new game
- `PUT /games` - Update game
- `DELETE /games/:id` - Delete game
- `/users` - User management endpoints
- `/login` - Authentication endpoints

## Local Development

1. Install dependencies:
```bash
npm install
```

2. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your database credentials
```

3. Initialize database (optional):
```bash
npm run init
```

4. Start development server:
```bash
npm run dev
```

## Deployment to Vercel

1. Install Vercel CLI:
```bash
npm i -g vercel
```

2. Login to Vercel:
```bash
vercel login
```

3. Deploy:
```bash
vercel
```

4. Set environment variables in Vercel dashboard:
   - `DB_HOST`
   - `DB_USERNAME`
   - `DB_PASSWORD`
   - `DB_NAME`
   - `DB_PORT`
   - `NODE_ENV=production`

## Environment Variables

- `DB_HOST` - Database hostname
- `DB_USERNAME` - Database username
- `DB_PASSWORD` - Database password
- `DB_NAME` - Database name
- `DB_PORT` - Database port (default: 5432)
- `NODE_ENV` - Environment (production/development)
- `PORT` - Server port (default: 3001)
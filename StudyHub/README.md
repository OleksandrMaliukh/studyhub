# 🎓 StudyHub

A modern flashcard learning platform built with React and Node.js.

## 🚀 Quick Start

### Local Development

1. **Install dependencies:**
   ```bash
   npm run install-all
   ```

2. **Set up environment variables:**
   ```bash
   # Copy example files
   cp server/env.example server/.env
   cp client/env.example client/.env
   
   # Edit the .env files with your configuration
   ```

3. **Start development servers:**
   ```bash
   npm run dev
   ```

4. **Access the application:**
   - Frontend: http://localhost:3000
   - Backend: http://localhost:5000

## 🚀 Deployment

### Quick Deployment (Recommended: Vercel + Railway)

1. **Push code to GitHub:**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **Deploy Backend to Railway:**
   - Go to [Railway](https://railway.app)
   - Connect GitHub repository
   - Set root directory to `server`
   - Add environment variables

3. **Deploy Frontend to Vercel:**
   - Go to [Vercel](https://vercel.com)
   - Connect GitHub repository
   - Set root directory to `client`
   - Add environment variables

### Environment Variables

**Backend (.env):**
```env
NODE_ENV=production
PORT=5000
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/studyhub
JWT_SECRET=your-super-secret-jwt-key
CLIENT_URL=https://your-frontend-url.vercel.app
```

**Frontend (.env):**
```env
REACT_APP_API_URL=https://your-backend-url.railway.app
```

## 📋 Features

- ✅ User Authentication
- ✅ Study Set Management
- ✅ Multiple Study Modes
- ✅ Interactive Games
- ✅ Responsive Design
- ✅ Modern UI/UX

## 🛠️ Tech Stack

- **Frontend:** React 18, Styled Components, Framer Motion
- **Backend:** Node.js, Express, MongoDB
- **Deployment:** Vercel, Railway, Docker

## 📖 Documentation

For detailed deployment instructions, see [DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License.

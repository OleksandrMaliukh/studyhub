# 🚀 StudyHub Deployment Guide

## Step-by-Step Deployment Process

### Step 1: Prepare Your Code

1. **Initialize Git Repository:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Create GitHub Repository:**
   - Go to [GitHub](https://github.com)
   - Create a new repository named "studyhub"
   - Don't initialize with README (we already have one)

3. **Push to GitHub:**
   ```bash
   git remote add origin https://github.com/yourusername/studyhub.git
   git push -u origin main
   ```

### Step 2: Set Up MongoDB Atlas

1. **Create MongoDB Atlas Account:**
   - Go to [MongoDB Atlas](https://mongodb.com/cloud/atlas)
   - Sign up for free account

2. **Create Cluster:**
   - Choose "Free" tier (M0)
   - Select region closest to your users
   - Create cluster (takes 3-5 minutes)

3. **Configure Database Access:**
   - Go to "Database Access"
   - Click "Add New Database User"
   - Set username and password
   - Grant "Read and write to any database" permissions
   - Click "Add User"

4. **Configure Network Access:**
   - Go to "Network Access"
   - Click "Add IP Address"
   - Click "Allow Access from Anywhere" (0.0.0.0/0)
   - Click "Confirm"

5. **Get Connection String:**
   - Go to "Clusters"
   - Click "Connect"
   - Choose "Connect your application"
   - Copy connection string
   - Replace `<password>` with your database user password

### Step 3: Deploy Backend (Railway)

1. **Go to Railway:**
   - Visit [Railway](https://railway.app)
   - Sign up with GitHub

2. **Create New Project:**
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your "studyhub" repository

3. **Configure Backend:**
   - Click on your project
   - Go to "Settings"
   - Set "Root Directory" to `server`
   - Click "Save"

4. **Add Environment Variables:**
   - Go to "Variables" tab
   - Add these variables:
     ```
     NODE_ENV=production
     JWT_SECRET=your-super-secret-jwt-key-here
     MONGODB_URI=your-mongodb-atlas-connection-string
     CLIENT_URL=https://your-frontend-url.vercel.app
     ```

5. **Deploy:**
   - Railway will automatically deploy
   - Wait for deployment to complete
   - Copy the generated URL (e.g., https://studyhub-production-xxxx.up.railway.app)

### Step 4: Deploy Frontend (Vercel)

1. **Go to Vercel:**
   - Visit [Vercel](https://vercel.com)
   - Sign up with GitHub

2. **Import Project:**
   - Click "New Project"
   - Import your "studyhub" repository
   - Set "Root Directory" to `client`
   - Click "Deploy"

3. **Add Environment Variables:**
   - Go to "Settings" → "Environment Variables"
   - Add:
     ```
     REACT_APP_API_URL=https://your-railway-backend-url.railway.app
     ```

4. **Redeploy:**
   - Go to "Deployments"
   - Click "Redeploy" to apply environment variables

### Step 5: Update URLs

1. **Update Backend:**
   - Go to Railway dashboard
   - Update `CLIENT_URL` with your Vercel URL
   - Redeploy backend

2. **Update Frontend:**
   - Go to Vercel dashboard
   - Update `REACT_APP_API_URL` with your Railway URL
   - Redeploy frontend

### Step 6: Test Your Deployment

1. **Visit your Vercel URL**
2. **Check that the app loads**
3. **Verify API connection**
4. **Test all features**

## 🎉 Congratulations!

Your StudyHub application is now live and accessible worldwide!

### Your URLs:
- **Frontend:** https://your-app.vercel.app
- **Backend:** https://your-app.railway.app
- **Database:** MongoDB Atlas (cloud)

## 🔧 Troubleshooting

### Common Issues:

1. **CORS Errors:**
   - Check that `CLIENT_URL` in backend matches frontend URL exactly
   - Ensure both URLs use https

2. **Database Connection:**
   - Verify MongoDB URI is correct
   - Check database user permissions
   - Ensure IP whitelist includes Railway IPs

3. **Environment Variables:**
   - Restart services after adding variables
   - Check variable names are correct
   - Ensure no spaces around `=`

## 📞 Support

If you encounter issues:
1. Check the troubleshooting section
2. Review platform documentation
3. Check application logs
4. Test API endpoints manually

**Happy Learning! 🎓**

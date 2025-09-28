#!/bin/bash

# StudyHub Deployment Script
echo "🚀 StudyHub Deployment Script"
echo "=============================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Please initialize git first."
    exit 1
fi

# Check if all changes are committed
if [ -n "$(git status --porcelain)" ]; then
    echo "⚠️  You have uncommitted changes. Please commit them first."
    git status
    read -p "Do you want to commit all changes now? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git add .
        read -p "Enter commit message: " commit_message
        git commit -m "${commit_message:-Deploy to production}"
    else
        echo "❌ Deployment cancelled. Please commit changes first."
        exit 1
    fi
fi

echo "📦 Building application..."

# Build frontend
echo "Building frontend..."
cd client
npm run build
if [ $? -ne 0 ]; then
    echo "❌ Frontend build failed"
    exit 1
fi
cd ..

echo "✅ Frontend built successfully"

# Push to git
echo "📤 Pushing to git..."
git push origin main
if [ $? -ne 0 ]; then
    echo "❌ Git push failed"
    exit 1
fi

echo "✅ Code pushed to repository"

echo ""
echo "🎉 Deployment preparation complete!"
echo ""
echo "Next steps:"
echo "1. Go to your deployment platform (Vercel, Railway, etc.)"
echo "2. Trigger deployment or wait for automatic deployment"
echo "3. Update environment variables if needed"
echo "4. Test your deployed application"
echo ""
echo "📖 For detailed instructions, see DEPLOYMENT_GUIDE.md"

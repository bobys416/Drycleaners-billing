# Deploy FreshClean Billing System to Vercel

Complete guide to deploy your app to Vercel cloud platform.

## Prerequisites

1. **Vercel Account** - Sign up free at https://vercel.com
2. **GitHub Account** - Push your code to GitHub
3. **Git** - Installed on your machine

## Step 1: Push Code to GitHub

Your app is already in GitHub at: https://github.com/bobys416/Drycleaners-billing

Make sure all changes are pushed:
```bash
git add .
git commit -m "Prepare for Vercel deployment"
git push
```

## Step 2: Deploy to Vercel

### Option A: Via Vercel Web Interface (Easiest)

1. Go to https://vercel.com/import
2. Click "Import Git Repository"
3. Select "GitHub" and connect your account
4. Find and select `bobys416/Drycleaners-billing`
5. Click "Import"
6. Vercel will auto-detect settings
7. Click "Deploy"
8. Wait for deployment to complete (~2-3 minutes)

### Option B: Via Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login to Vercel
vercel login

# Navigate to your project folder
cd dryclean_app

# Deploy
vercel

# Follow the prompts to complete deployment
```

## Step 3: Configure Environment

Once deployed:
1. Go to your Vercel project dashboard
2. Click "Settings" → "Environment Variables"
3. (Optional) Add any custom settings needed

## Step 4: Access Your App

Your app will be live at:
```
https://your-project-name.vercel.app
```

You'll get a unique URL from Vercel during deployment.

## Database Note

⚠️ **Important**: Vercel deployments are **ephemeral** (temporary storage). 
- Each deployment gets a fresh `/tmp` folder
- Database data will be lost when deployment resets

**For production use**, consider:
1. Add MongoDB/PostgreSQL integration
2. Or use Vercel's persistent file storage options
3. Or run the local version for persistent data

## Features Available on Vercel

✅ All features work:
- Customer management
- Bill creation & tracking
- Excel export
- Email reports (if SMTP configured in Settings)
- Payment tracking
- Dashboard

## Support

Visit: https://github.com/bobys416/Drycleaners-billing/issues

---

**Once deployed, your app is live on the internet!** 🎉

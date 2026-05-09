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

## Step 4: Test Your Deployment

1. Visit your live URL (given during deployment)
2. Click `/health` endpoint to verify app is running
3. Test email functionality in Settings if configured

## Step 5: Access Your App

Your app will be live at:
```
https://your-project-name.vercel.app
```

You'll get a unique URL from Vercel during deployment.

## ✅ Fixed Issues

This version includes fixes for common Vercel deployment issues:
- **DNS hostname errors** - Added timeouts and error handling
- **Cold start issues** - Lazy database initialization
- **Connection timeouts** - Explicit timeout configuration
- **Better error messages** - Clear guidance for troubleshooting

See `DNS_ERROR_GUIDE.md` for detailed technical explanation.

## Database Note

⚠️ **Important**: Vercel deployments are **ephemeral** (temporary storage). 
- Each deployment gets a fresh `/tmp` folder
- Database data will be lost when deployment resets or after 15 minutes of inactivity

**For production use**, consider:
1. Add MongoDB/PostgreSQL integration
2. Use Vercel's KV (Redis) for session data
3. Or run the local version for persistent data

## Features Available on Vercel

✅ All features work:
- Customer management
- Bill creation & tracking
- Excel export
- Email reports (if SMTP configured in Settings)
- Payment tracking
- Dashboard
- Health check endpoint

## Troubleshooting

### Issue: DNS Hostname Not Found
**Solution:** This is now fixed in the latest version. The app uses lazy initialization and proper timeout handling.

### Issue: 502 Bad Gateway
**Solution:** Check Vercel logs in your dashboard. Usually indicates:
- Database initialization error
- Missing templates directory
- Python package import error

### Issue: Email not sending
**Solution:** 
1. Go to Settings in your app
2. Verify SMTP credentials are correct
3. Check Vercel logs for specific error

### Issue: Can't access http://localhost:5055
**Solution:** This is for local development only. Use your Vercel deployment URL instead.

## Support

Visit: https://github.com/bobys416/Drycleaners-billing/issues

---

**Once deployed, your app is live on the internet!** 🎉

### Health Check
Test your deployment is working:
```
GET https://your-vercel-url.vercel.app/health
```

Should return:
```json
{"status": "ok", "app": "FreshClean Billing System"}
```


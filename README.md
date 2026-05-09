# 🧺 FreshClean — Dry Cleaning Billing System

A complete **offline billing management system** for dry cleaning stores.  
Built with Python (Flask) + SQLite + Excel export + Email reports.

---

## ✅ Features

| Feature | Details |
|---|---|
| **Customer Accounts** | Name, phone, email, address, city, notes |
| **Bill Management** | Create, view, edit, delete bills |
| **Item Tracking** | Cloth type, service type, qty, rate, discount, tax |
| **Payment Tracking** | Record partial/full payments, track balances |
| **Service Catalogue** | Manage all services with rates (13 pre-loaded) |
| **Excel Export** | Bills summary, itemized details, customer ledger |
| **Email Reports** | Monthly reports via SMTP (Gmail compatible) |
| **Print Receipts** | Browser print-friendly bill view |
| **Dashboard** | Revenue stats, pending dues, recent bills |

---

## 🚀 Installation & Setup

### Windows Users (Easiest)

#### Option 1: Run Setup Script (Recommended)
1. Download and extract the folder
2. **Double-click `setup.bat`** 
3. Wait for installation to complete
4. Click **"FreshClean Billing"** shortcut on your Desktop to run
5. Open browser → `http://localhost:5055`

#### Option 2: Run Pre-built Executable
1. Navigate to the folder
2. Double-click **`dist/app.exe`**
3. Open browser → `http://localhost:5055`

#### Option 3: Manual Run (Python Required)
```bash
# 1. Install Python first (https://www.python.org/downloads/)
# 2. Double-click setup.bat OR run:
pip install flask flask-cors openpyxl
python app.py

# 3. Open browser
# http://localhost:5055
```

### Linux/Mac Users

```bash
# 1. Install Python 3.8+
sudo apt-get install python3 python3-pip  # Ubuntu/Debian

# 2. Install dependencies
pip install flask flask-cors openpyxl

# 3. Run the app
bash start.sh
# OR
python3 app.py

# 4. Open browser
# http://localhost:5055
```

---

## 📧 Email Setup (Gmail)

1. Go to **Settings** in the app
2. Configure:
   - SMTP Host: `smtp.gmail.com`
   - SMTP Port: `587`
   - SMTP Username: `youremail@gmail.com`
   - SMTP Password: Your **Gmail App Password** (not your regular password)
3. **Get App Password**: Google Account → Security → 2-Step Verification → App Passwords

---

## 🗄️ Database

- Uses **SQLite** (`dryclean.db`) — no setup needed
- Auto-created on first run
- Tables: `customers`, `bills`, `bill_items`, `services`, `settings`

---

## 📁 File Structure

```
dryclean_app/
├── app.py              ← Flask backend + all APIs
├── setup.bat           ← Windows setup script (run this first!)
├── run.bat             ← Quick launcher for Windows
├── dist/
│   └── app.exe        ← Standalone Windows executable
├── templates/
│   └── index.html     ← Full frontend UI
├── dryclean.db        ← SQLite database (auto-created)
├── start.sh           ← Startup script for Linux/Mac
└── README.md          ← This file
```

**Files to use:**
- **Windows**: Use `setup.bat` for first-time setup, then `dist/app.exe` or `run.bat` to launch
- **Linux/Mac**: Use `start.sh` to launch

---

## 💡 Tips

- **New Bill for Existing Customer**: Go to Customers → Click 📋 → "+ New Bill"  
- **Monthly Report**: Reports page → select month → Download or Email  
- **Track Payments**: Bills list → Pay button → enter amount  
- **Customer Ledger**: Auto-included in every Excel export  

---

*Built with Flask + SQLite + openpyxl*

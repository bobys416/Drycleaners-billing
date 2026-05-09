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

## 🚀 How to Run

### Requirements
- Python 3.8+
- pip

### Steps

```bash
# 1. Go to the app folder
cd dryclean_app

# 2. Run the startup script (Linux/Mac)
bash start.sh

# OR run directly:
pip install flask flask-cors openpyxl
python3 app.py

# 3. Open browser
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
├── app.py          ← Flask backend + all APIs
├── templates/
│   └── index.html  ← Full frontend UI
├── dryclean.db     ← SQLite database (auto-created)
├── start.sh        ← Startup script
└── README.md       ← This file
```

---

## 💡 Tips

- **New Bill for Existing Customer**: Go to Customers → Click 📋 → "+ New Bill"  
- **Monthly Report**: Reports page → select month → Download or Email  
- **Track Payments**: Bills list → Pay button → enter amount  
- **Customer Ledger**: Auto-included in every Excel export  

---

*Built with Flask + SQLite + openpyxl*

# Arraycode — Digital Visiting Card

A creative, interactive digital visiting card design built with **clean Vanilla JavaScript**, tailored specifically for **[Arraycode](https://www.arraycode.in/)** employees.

---

## 📱 Adaptive Display (No Scroll)
- **Laptop / Desktop**: Sleek **Horizontal Executive Card** (landscape layout). Fits on screen with **no scrolling**.
- **Mobile Devices**: Responsive **Vertical Card** (portrait layout). Fits on mobile screens with **no scrolling**.
- **Display Picture (DP)**: Prominent, fully visible circular frame with glowing brand gradient ring and status indicator.

---

## 📂 Folder Structure

```
Visiting card/
│
├── index.html                  # Main responsive card entry point
├── start-server.bat            # 1-Click launcher (opens http://localhost:3000)
├── README.md                   # Documentation & guide
│
├── css/
│   └── style.css               # Responsive horizontal/vertical styles & dark/light theme
│
├── js/
│   ├── script.js               # Clean Vanilla JS (fetches data/info.json, handles vCard & QR)
│   └── qrcode.min.js           # 100% offline QR code generator
│
└── data/
    ├── info.json               # Employee & company configuration
    └── img/
        ├── dp.jpg              # Profile picture (Display Picture)
        ├── arraycode-mark.png  # Arraycode [ A ] brand mark
        ├── arraycode-wordmark.png # Dark wordmark
        ├── arraycode-wordmark-light.png # Light wordmark
        └── arraycode-icon.png  # Arraycode icon
```

---

## 🚀 How to Run

1. **Option 1**: Double-click `start-server.bat` (launches local server at `http://localhost:3000`).
2. **Option 2**: Open `index.html` directly in any web browser.

---

## 👥 How to Create for Any Employee

1. Add the employee's photo to `data/img/` (e.g., `data/img/dp.jpg`).
2. Edit `data/info.json` with the employee's name, role, email, phone, and links:
```json
{
  "employee": {
    "name": "Athul Raj",
    "role": "Lead Product Engineer",
    "department": "Engineering & Innovation",
    "company": "Arraycode",
    "pronouns": "He/Him",
    "avatar": "data/img/dp.jpg",
    "bio": "Senior Product Engineer at Arraycode. I build and ship high-performance web platforms, installable PWAs, and native-grade mobile experiences.",
    "email": "athul@arraycode.in",
    "phone": "+91 98765 43210",
    "whatsapp": "+919876543210",
    "location": "Bengaluru, India",
    "website": "https://www.arraycode.in"
  }
}
```

---

## ✨ Features
- **Save Contact (`.vcf` vCard)**: 1-click download to add contact directly into phone address books.
- **Contactless QR Code Modal**: Offline scannable QR code for in-person sharing.
- **Direct Connect**: Tap-to-call, email, WhatsApp chat with prefilled greeting, meeting scheduler, and Google Maps.
- **Copy-to-Clipboard**: Copy buttons for phone and email with animated toast notifications.
- **Theme Toggle**: Light / Dark mode toggle in top corner.

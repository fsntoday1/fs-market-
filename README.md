# FS Market BD — Ultra-Modern Liquid Glass E-Commerce Platform

[![UI Style](https://img.shields.io/badge/UI%20Style-Liquid%20Glass%20%2F%20Frosted%20Glassmorphism-00f2fe.svg)](#design-system)
[![Status](https://img.shields.io/badge/Status-Production--Ready-00f5a0.svg)](#features)
[![Tech Stack](https://img.shields.io/badge/Stack-React%2018%20%7C%20Tailwind%20CSS%20%7C%20HTML5-9d4edd.svg)](#tech-stack)

**FS Market BD** is a complete, fully functional, and production-ready e-commerce web application specifically crafted for an online gadget and mobile accessories store in Bangladesh. The application is built with a **Liquid Glass UI (Frosted Glassmorphism)** aesthetic, featuring deep obsidian backgrounds, multi-layer blur backdrops, vibrant cyan and purple neon glow accents, smooth micro-interactions, and 3D card tilt physics.

---

## ⚡ Quick Start

### Option 1: 1-Click Launch (Windows)
Double-click `start.bat` in the project root folder.
This automatically starts the built-in local development server on `http://localhost:5000` and opens your default web browser.

### Option 2: PowerShell Web Server
Open PowerShell in the project directory and run:
```powershell
powershell -ExecutionPolicy Bypass -File .\start-server.ps1
```

### Option 3: Direct Browser Launch
Open `index.html` directly in any modern browser (Google Chrome, Microsoft Edge, Brave, Firefox, or Safari).

---

## 🔐 Staff Admin Portal Credentials

You can test the secure Admin Dashboard by clicking the **"Admin Portal"** button in the header or in the footer.

| Parameter | Value |
| :--- | :--- |
| **Email** | `admin@fsmarketbd.com` |
| **Password** | `admin123` |
| **Quick Action** | Click the **"Auto-Fill"** button on the login modal |

---

## 🌟 Key Application Panels & Features

### 1. Customer-Facing Storefront
- **Ultra-Modern Header**:
  - Glowing liquid brand typography with animated zap glyph.
  - Live instant search bar with autocomplete dropdown suggestions.
  - Interactive Wishlist counter and shopping bag counter with live price calculations.
  - Live announcements ticker with hotline and order tracking quick launcher.
- **Hero Showcase & 3D Interactive Card**:
  - Glowing gradient headline highlighting authentic smart gear in Bangladesh.
  - Interactive 3D glass card with mouse-tracking tilt physics showcasing the flagship Apple Watch Ultra 2 with live spec tags and quick add-to-cart.
  - Trust statistics: 100% Brand Authentic, 24-48h Express Delivery in Bangladesh, and Cash on Delivery guarantee.
- **Dynamic Product Catalog & Filtering**:
  - Filter across 5 main categories:
    1. **Mobile Accessories** (MagSafe cases, magnetic wireless charging pads, battery packs)
    2. **Smartwatches** (Apple Watch Ultra 2, Galaxy Watch 6 Classic, Amazfit Cheetah Pro)
    3. **Earbuds** (Sony WF-1000XM5 ANC, AirPods Pro 2 USB-C, Nothing Ear transparent)
    4. **Chargers** (Anker Prime 100W GaN, Baseus Blade 100W Slim, Ugreen Nexode 140W PD3.1)
    5. **Tech Gadgets** (DJI Osmo Mobile 6 Gimbal, Keychron K2 Pro Mechanical Keyboard)
  - Price range slider (৳3,000 to ৳100,000 BDT).
  - Multi-criteria sorting: Featured, Price (Low to High), Price (High to Low), Customer Rating, and Stock Count.
  - In-stock availability toggle.
- **Frosted Glass Product Cards**:
  - Backdrop blur, hover zoom transitions, discount badges (-15%, -20%), stock level alerts ("Only 8 left!"), quick view trigger, and wishlist heart toggles.
- **Deep Specifications Modal (Quick View)**:
  - Interactive image gallery with thumbnail preview.
  - Real technical specifications table (battery life, case material, connectivity, water resistance, and official warranty).
  - Stock availability meter and quantity selector.
  - "Add to Cart" and "Instant Checkout" buttons.
- **Interactive Slide-Over Cart Drawer**:
  - Quantity increment/decrement and item removal.
  - Dynamic delivery fee calculation: Inside Dhaka (৳60) vs. Outside Dhaka (৳120) with free delivery on orders above ৳50,000.
  - Promo coupon support:
    - `FSMARKET10` (10% VIP Discount)
    - `TECHBD` (৳300 Flat Discount)
    - `FREESHIP` (Free delivery)
- **Multi-Step Checkout System**:
  - Customer validation with 11-digit Bangladeshi mobile number check (`01XXXXXXXXX`).
  - District selection across all 8 divisions of Bangladesh.
  - Payment modes: Cash on Delivery (COD), bKash / Nagad Mobile Banking (with official merchant guide and TrxID input), or Credit / Debit Card.
  - Instant order placement: saves to localStorage, decrements inventory stock, and triggers a celebratory confetti blast.
  - Printable official invoice with unique Order ID (e.g. `#FS-84920`).
- **Customer Order Tracking Modal**:
  - Look up real-time delivery status using Order ID or Phone number.
  - Visual 4-step progress stepper: Placed → Processing → On The Way → Delivered.
- **Saved Wishlist Drawer**:
  - Slide-over drawer with 1-click "Move to Cart" or "Move All to Cart".

---

### 2. Secure Admin Dashboard
- **Authentication**:
  - Frosted glass modal with demo credentials auto-fill button, validation, and session persistence.
- **Analytics Overview**:
  - 4 Glowing Stat Cards: Gross Sales (৳ BDT), Total Orders, Catalog Inventory, and Total Customers.
  - Real-time Order Status Pipeline distribution chart (Completed, Processing, Pending, Cancelled).
  - Popular category inventory breakdown bars.
  - Top-performing gadget rankings by total revenue generated.
  - Recent live orders feed with instant navigation.
- **Product Management (Full CRUD)**:
  - **Create**: Add new gadget items with title, category, price, original price, stock, image URL (with 6 one-click image presets), descriptions, and specs.
  - **Read**: Searchable and filterable data table with product thumbnails and stock indicators.
  - **Update**: Edit existing products with pre-filled modal, plus fast inline stock adjustment buttons (+ / -).
  - **Delete**: Remove discontinued items with frosted glass confirmation modal.
- **Order Management**:
  - Full tabular view of all customer orders.
  - Interactive status dropdown directly in each row (`Pending`, `Processing`, `Completed`, `Cancelled`) that immediately syncs with customer order tracking!
  - "View Invoice" modal with complete customer info, item thumbnails, pricing breakdown, and printable customer slip.
- **Customer Directory**:
  - Extracted customer ledger showing name, phone, city, total orders placed, and lifetime spend.
- **Demo Controls**:
  - 1-click "Reset Sample Data" button to restore default pristine dataset anytime.

---

## 🎨 Design System: "Liquid Glass UI"

- **Frosted Glassmorphism**: `backdrop-filter: blur(20px) saturate(180%)`, semi-transparent borders `rgba(255, 255, 255, 0.09)`, and inner highlights `box-shadow: inset 0 1px 1px 0 rgba(255, 255, 255, 0.12)`.
- **Deep Ambient Glows**: 4 floating animated orbs (Cyan, Purple, Pink, Emerald) providing continuous subtle fluid lighting behind the glass layers.
- **Micro-Interactions**: Hover lighting effects, 3D card tilt physics, button shimmer animations, and slide-over transition drawers.
- **Color Palette**:
  - Cyan Glow: `#00f2fe`
  - Deep Indigo/Purple: `#9d4edd`
  - Emerald Green: `#00f5a0`
  - Electric Pink: `#f72585`
  - Obsidian Base: `#060913`
  - Surface Glass: `rgba(14, 21, 38, 0.65)`

---

## 📂 Project Architecture

```
fs-market-bd-web/
├── index.html                  # Single Page Application entry point
├── README.md                   # Complete documentation
├── start.bat                   # 1-click Windows server launcher
├── start-server.ps1            # Native PowerShell HTTP server with MIME mapping
├── css/
│   └── liquid-glass.css        # Frosted Glassmorphism, neon glows & keyframe animations
└── js/
    ├── app.js                  # Main React orchestrator, storage sync & routing
    ├── data/
    │   ├── initialProducts.js  # 14 authentic tech gadgets with BDT prices & specs
    │   └── initialOrders.js    # Initial sample customer orders & invoices
    └── components/
        ├── Toast.js            # Glassmorphism alert toast notifications
        ├── Common/
        │   └── Icons.js        # Handcrafted reactive SVG tech icons
        ├── Storefront/
        │   ├── Navbar.js       # Glass navigation, search autocomplete & cart count
        │   ├── Hero.js         # Hero banner with 3D interactive tilt flagship card
        │   ├── CategoryFilter.js# Dynamic category pills, price slider & sorting
        │   ├── ProductCard.js  # Frosted glass card with hover zoom & Add to Cart
        │   ├── ProductGrid.js  # Responsive multi-column gadget grid
        │   ├── ProductModal.js # Quick View & deep specs modal with image gallery
        │   ├── CartDrawer.js   # Slide-over cart drawer with coupons & shipping fees
        │   ├── CheckoutModal.js# Multi-step checkout with COD, bKash & confetti
        │   ├── WishlistDrawer.js # Saved favorites drawer
        │   ├── OrderTrackingModal.js # Customer shipment tracker by Order ID
        │   └── Footer.js       # Bangladesh branch addresses, hotline & payment logos
        └── Admin/
            ├── AdminLogin.js   # Glassmorphism staff authentication modal
            ├── AdminDashboard.js# Overview analytics, visual charts & customer directory
            ├── ProductCRUD.js  # Full CRUD gadget catalog manager with image presets
            └── OrderManagement.js # Order processing table with status dropdown & invoice
```

---

## 🇧🇩 Localized for Bangladesh (BD)

- **Currency**: Bangladeshi Taka (৳ BDT) across all products, calculations, and analytics.
- **Shipping**: Inside Dhaka (৳60) and Outside Dhaka (৳120) with free express delivery thresholds.
- **Payment Methods**: Cash on Delivery (COD) with doorstep inspection, bKash, Nagad, Rocket, and Visa/Mastercard.
- **Phone Validation**: Native support for Bangladeshi 11-digit mobile numbers (`01XXXXXXXXX`).
- **Physical Hubs**: Flagship presence in Jamuna Future Park, Banani, and GEC Circle Chattogram.

# Data Professional Portfolio Website

A clean, modern single-page portfolio website designed for data professionals to showcase their profile, social links, and published articles with beautiful multi-icon layouts.

## ✨ Features

- **🎨 Brand-Colored Social Links**: Each platform (LinkedIn, GitHub, etc.) has authentic brand colors
- **🎯 Professional Tech Stack**: Clean hashtag-style technology tags  
- **📱 Responsive Design**: Optimized for all screen sizes
- **🌐 Local Network Ready**: Easy setup for sharing on your local network
- **🚀 Multiple Server Options**: Python, Node.js, or PHP serving options

## 🚀 Quick Start

### Option 1: Using the Startup Script (Recommended)
```bash
# Make script executable
chmod +x start-server.sh

# Run the script
./start-server.sh
```

Choose option 1 (Python HTTP Server) when prompted.

### Option 2: Direct Python Server
```bash
# Simple local access only
python3 -m http.server 8000

# Network access (accessible from other devices)
python3 -m http.server 8000 --bind 0.0.0.0
```

## 🌐 Local Network Access

Once your server is running, you can access your portfolio from:

**From your computer:**
- http://localhost:8000

**From other devices on your network:**
- http://192.168.0.3:8000 (replace with your actual IP)

### Find Your Local IP Address
```bash
# Linux/Ubuntu
hostname -I | awk '{print $1}'

# Alternative method
ip route get 1 | awk '{print $7}' | head -1
```

### Accessing from Mobile/Tablet
1. Connect your device to the same WiFi network
2. Open a web browser 
3. Navigate to `http://YOUR_LOCAL_IP:8000`

## 📝 Customization Guide

### 1. Update Personal Information

Edit `index.html` to update:

**Profile Section:**
- **Name**: Change text in `<h1 class="name">` tag
- **Title**: Update text in `<h2 class="title">` tag  
- **Bio**: Replace text in `<p class="bio">` section
- **Photo**: Replace `profile.png` with your own image

**Social Links:**
```html
<a href="https://linkedin.com/in/YOUR_PROFILE" target="_blank">
<a href="https://github.com/YOUR_USERNAME" target="_blank">
<a href="your-resume.pdf" target="_blank">
<a href="mailto:your.email@example.com" target="_blank">
```

**Tech Stack:**
```html
<span class="tech-tag">#YourTech</span>
<span class="tech-tag">#YourFramework</span>
<span class="tech-tag">#YourTool</span>
```

### 2. Customize Article Icons

Each article supports multiple icons:
- **1 Main Icon**: Large, prominent (70px)
- **2 Secondary Icons**: Smaller supporting icons (32px)

**Icon Structure:**
```html
<div class="article-icons">
    <div class="article-icon main-icon">
        <i class="fas fa-robot"></i>  <!-- Main icon -->
    </div>
    <div class="secondary-icons">
        <div class="article-icon secondary-icon">
            <i class="fab fa-python"></i>  <!-- Secondary icon 1 -->
        </div>
        <div class="article-icon secondary-icon">
            <i class="fas fa-chart-bar"></i>  <!-- Secondary icon 2 -->
        </div>
    </div>
</div>
```

**Popular Icon Options:**
- Data Science: `fas fa-chart-line`, `fas fa-brain`, `fas fa-robot`
- Programming: `fab fa-python`, `fab fa-js`, `fas fa-code`
- Tools: `fab fa-docker`, `fab fa-aws`, `fas fa-database`

### 3. Add New Articles

Copy this template and add it to the `articles-grid` section:

```html
<article class="article-card">
    <div class="article-icons">
        <div class="article-icon main-icon">
            <i class="fas fa-YOUR-ICON"></i>
        </div>
        <div class="secondary-icons">
            <div class="article-icon secondary-icon">
                <i class="fab fa-YOUR-TECH-1"></i>
            </div>
            <div class="article-icon secondary-icon">
                <i class="fas fa-YOUR-TECH-2"></i>
            </div>
        </div>
    </div>
    <div class="article-content">
        <h3 class="article-title">Your Article Title</h3>
        <p class="article-preview">
            Your article description goes here.
        </p>
        <a href="https://your-article-url.com" target="_blank" class="article-link">
            Read Article <i class="fas fa-external-link-alt"></i>
        </a>
    </div>
</article>
```

### 4. Color Customization

**Change background gradient:**
```css
body {
    background: linear-gradient(135deg, #YOUR-COLOR-1 0%, #YOUR-COLOR-2 100%);
}
```

**Popular color schemes:**
- Purple/Blue: `#667eea` to `#764ba2` (current)
- Green/Blue: `#11998e` to `#38ef7d`
- Dark theme: `#2c3e50` to `#34495e`

## 🔧 Server Options

### Python HTTP Server (Default)
```bash
# Basic server
python3 -m http.server 8000

# Network accessible
python3 -m http.server 8000 --bind 0.0.0.0
```

### Node.js Live Server (Auto-reload)
```bash
# Install globally
npm install -g live-server

# Run with auto-reload
live-server --port=8000 --host=0.0.0.0
```

### PHP Built-in Server
```bash
php -S 0.0.0.0:8000
```

## 🎨 File Structure

```
portfolio_website_v2/
├── index.html           # Main website file
├── style.css            # Styling and responsive design
├── profile.png          # Your profile photo
├── start-server.sh      # Server startup script
└── README.md           # This documentation
```

## 💡 Pro Tips

### Development
- **Live Reload**: Use `live-server` for automatic refresh during development
- **Mobile Testing**: Test on actual devices using your local IP
- **Port Conflicts**: Try different ports (8000, 3000, 9000) if needed

### Design
- **Icon Consistency**: Use icons from the same Font Awesome family
- **Image Optimization**: Compress your profile photo for faster loading
- **Color Harmony**: Use a color palette generator for consistent colors

### Performance
- **Lighthouse Testing**: Use Chrome DevTools to check performance
- **Meta Tags**: Update title and description for better SEO
- **Browser Cache**: Hard refresh (Ctrl+Shift+R) when testing changes

## 🔍 Finding Icons

Visit [fontawesome.com/icons](https://fontawesome.com/icons) to find icons:
- `fas fa-icon-name` for solid icons
- `fab fa-brand-name` for brand icons
- `far fa-icon-name` for regular icons

## 🆘 Troubleshooting

### Server Issues
- **Port in use**: Try different port (`python3 -m http.server 3000`)
- **Network access denied**: Check firewall settings
- **Can't access from network**: Verify IP address and network connectivity

### Display Issues
- **Icons not showing**: Check Font Awesome CDN link in HTML head
- **Layout broken**: Validate HTML structure, clear browser cache
- **Mobile issues**: Test on actual devices, check viewport meta tag

### Performance Issues
- **Slow loading**: Optimize images, check network connection
- **Font loading**: Consider self-hosting icons for faster load times

---

**Built with ❤️ for data professionals who want a beautiful, easy-to-share portfolio website.** 
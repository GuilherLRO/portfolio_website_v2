# Data Professional Portfolio Website

A clean, modern single-page portfolio website designed for data professionals to showcase their profile, social links, and published articles with beautiful multi-icon layouts.

## ✨ What's New

### Latest Updates
- **🎨 Brand-Colored Social Links**: Each platform (LinkedIn, GitHub, etc.) now has its authentic brand colors
- **🎯 Centered Tech Stack**: Professional hashtag-style technology tags centered for better visual balance
- **📝 Recruiter-Optimized Bio**: Concise, impact-focused professional description
- **🌐 Local Hosting Guide**: Complete instructions for serving locally and Cloudflare tunnel setup
- **🛠️ Startup Scripts**: Automated server setup with multiple hosting options

## 🚀 Getting Started

1. **Open the website**: Simply open `index.html` in your web browser
2. **Customize your content**: Edit the HTML and CSS files to match your information
3. **Add your photo**: Replace the placeholder image with your own profile picture

## 📝 Complete Customization Guide

### 1. Update Your Personal Information

Edit `index.html` to update:

#### Profile Section
- **Your Name**: Change "Your Name" in the `<h1 class="name">` tag
- **Your Title**: Update "Data Scientist | Analytics Expert" in the `<h2 class="title">` tag
- **Your Bio**: Replace the bio text in the `<p class="bio">` section
- **Profile Photo**: Replace `profile.png` with your own photo file

#### Social Links
Update the URLs in the social links section:
```html
<a href="https://linkedin.com/in/YOUR_PROFILE" target="_blank">
<a href="https://github.com/YOUR_USERNAME" target="_blank">
<a href="your-resume.pdf" target="_blank">
```

### 2. Customize Article Icons (Multi-Icon Setup)

Your articles now support multiple icons! Here's how to customize them:

#### Current Icon Structure
Each article has:
- **1 Main Icon**: Large, prominent icon (70px)
- **2 Secondary Icons**: Smaller supporting icons (32px)

#### How to Change Icons

**Find the article you want to update:**
```html
<div class="article-icons">
    <div class="article-icon main-icon">
        <i class="fas fa-robot"></i>  <!-- Main icon -->
    </div>
    <div class="secondary-icons">
        <div class="article-icon secondary-icon">
            <i class="fab fa-docker"></i>  <!-- Secondary icon 1 -->
        </div>
        <div class="article-icon secondary-icon">
            <i class="fas fa-cloud"></i>   <!-- Secondary icon 2 -->
        </div>
    </div>
</div>
```

#### Popular Icon Options

**Data Science & Analytics:**
- `fas fa-chart-line` - Line chart
- `fas fa-chart-bar` - Bar chart
- `fas fa-chart-pie` - Pie chart
- `fas fa-calculator` - Calculator
- `fas fa-brain` - Brain/AI
- `fas fa-robot` - Robot/ML

**Programming Languages:**
- `fab fa-python` - Python
- `fab fa-js` - JavaScript
- `fab fa-r-project` - R
- `fas fa-code` - General code
- `fab fa-html5` - HTML
- `fab fa-css3-alt` - CSS

**Tools & Technologies:**
- `fab fa-docker` - Docker
- `fab fa-aws` - AWS
- `fab fa-github` - GitHub
- `fas fa-database` - Database
- `fas fa-cloud` - Cloud
- `fas fa-server` - Server

**Business & Communication:**
- `fas fa-presentation` - Presentation
- `fas fa-users` - Team/People
- `fas fa-lightbulb` - Ideas
- `fas fa-target` - Goals
- `fas fa-chart-area` - Analytics

#### Adding More Icons

To add a third (or fourth) secondary icon:
```html
<div class="secondary-icons">
    <div class="article-icon secondary-icon">
        <i class="fab fa-docker"></i>
    </div>
    <div class="article-icon secondary-icon">
        <i class="fas fa-cloud"></i>
    </div>
    <div class="article-icon secondary-icon">
        <i class="fas fa-new-icon"></i>  <!-- New icon -->
    </div>
</div>
```

#### Removing Icons

To use only the main icon (no secondary icons):
```html
<div class="article-icons">
    <div class="article-icon main-icon">
        <i class="fas fa-robot"></i>
    </div>
    <!-- Remove the entire secondary-icons div -->
</div>
```

### 3. Add New Articles

To add a new article, copy this template and paste it before the closing `</div>` of `articles-grid`:

```html
<article class="article-card">
    <div class="article-icons">
        <div class="article-icon main-icon">
            <i class="fas fa-YOUR-MAIN-ICON"></i>
        </div>
        <div class="secondary-icons">
            <div class="article-icon secondary-icon">
                <i class="fab fa-YOUR-SECONDARY-ICON-1"></i>
            </div>
            <div class="article-icon secondary-icon">
                <i class="fas fa-YOUR-SECONDARY-ICON-2"></i>
            </div>
        </div>
    </div>
    <div class="article-content">
        <h3 class="article-title">Your Article Title</h3>
        <p class="article-preview">
            Your article description/preview text goes here.
        </p>
        <a href="https://your-article-url.com" target="_blank" class="article-link">
            Read Article <i class="fas fa-external-link-alt"></i>
        </a>
    </div>
</article>
```

### 4. Customize Colors & Styling

#### Change the Main Color Theme

**Update the background gradient:**
```css
body {
    background: linear-gradient(135deg, #YOUR-COLOR-1 0%, #YOUR-COLOR-2 100%);
}
```

**Popular color combinations:**
- Purple/Blue: `#667eea` to `#764ba2` (current)
- Green/Blue: `#11998e` to `#38ef7d`
- Orange/Pink: `#fa709a` to `#fee140`
- Dark Blue: `#2c3e50` to `#3498db`

#### Update Icon Colors

**Main icons:**
```css
.main-icon {
    background: linear-gradient(135deg, #YOUR-COLOR-1 0%, #YOUR-COLOR-2 100%);
}
```

**Secondary icons:**
```css
.secondary-icon {
    background: linear-gradient(135deg, #YOUR-LIGHT-COLOR-1 0%, #YOUR-LIGHT-COLOR-2 100%);
}
.secondary-icon i {
    color: #YOUR-ICON-COLOR;
}
```

#### Social Links Colors

```css
.social-links a:hover {
    background: #YOUR-COLOR;
    color: white;
}
```

### 5. Adjust Sizes & Spacing

#### Icon Sizes

**Main icon size:**
```css
.main-icon {
    width: 70px;    /* Change this */
    height: 70px;   /* Change this */
}
.main-icon i {
    font-size: 1.8rem;  /* Change this */
}
```

**Secondary icon size:**
```css
.secondary-icon {
    width: 32px;    /* Change this */
    height: 32px;   /* Change this */
}
.secondary-icon i {
    font-size: 0.9rem;  /* Change this */
}
```

#### Card Spacing

**Article cards:**
```css
.articles-grid {
    gap: 1.5rem;    /* Space between cards */
}
.article-card {
    padding: 1.25rem;  /* Space inside cards */
}
```

### 6. Change Layout Options

#### Switch to Side-by-Side Icons

Replace the current icon structure with:
```html
<div class="article-icons horizontal">
    <div class="article-icon equal-size">
        <i class="fas fa-robot"></i>
    </div>
    <div class="article-icon equal-size">
        <i class="fab fa-docker"></i>
    </div>
    <div class="article-icon equal-size">
        <i class="fas fa-cloud"></i>
    </div>
</div>
```

Then add this CSS:
```css
.article-icons.horizontal {
    flex-direction: row;
    gap: 0.5rem;
}
.article-icon.equal-size {
    width: 50px;
    height: 50px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
.article-icon.equal-size i {
    font-size: 1.2rem;
    color: white;
}
```

### 7. Typography Customization

#### Change Fonts

**Add Google Fonts to HTML head:**
```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
```

**Update CSS:**
```css
body {
    font-family: 'Inter', sans-serif;
}
```

#### Adjust Text Sizes

```css
.name { font-size: 2.5rem; }           /* Your name */
.title { font-size: 1.3rem; }          /* Your title */
.bio { font-size: 1.1rem; }            /* Bio text */
.article-title { font-size: 1.3rem; }  /* Article titles */
.article-preview { font-size: 0.95rem; } /* Article previews */
```

### 8. Add More Social Links

Copy this pattern and add it to the social links section:
```html
<a href="https://your-social-platform.com/profile" target="_blank" aria-label="Platform Name">
    <i class="fab fa-platform-icon"></i>
    <span>Platform Name</span>
</a>
```

**Popular social icons:**
- `fab fa-twitter` - Twitter
- `fab fa-medium` - Medium
- `fab fa-youtube` - YouTube
- `fab fa-instagram` - Instagram
- `fab fa-telegram` - Telegram
- `fas fa-envelope` - Email

### 9. Mobile Responsiveness

The site is already mobile-friendly, but you can adjust breakpoints:

```css
/* Tablet styles */
@media (max-width: 768px) {
    /* Your tablet customizations */
}

/* Mobile styles */
@media (max-width: 480px) {
    /* Your mobile customizations */
}
```

### 10. Performance & SEO

#### Update Page Title & Meta Tags

```html
<title>Your Name - Data Professional Portfolio</title>
<meta name="description" content="Data Scientist specializing in machine learning, analytics, and visualization. View my articles and projects.">
```

#### Add Favicon

1. Create a `favicon.ico` file (16x16 or 32x32 pixels)
2. Add to HTML head:
```html
<link rel="icon" type="image/x-icon" href="favicon.ico">
```

## 🔧 File Structure

```
portfolio_website_v2/
├── index.html                      # Main website file
├── style.css                       # All styling and responsive design
├── profile.png                     # Your profile photo
├── README.md                      # This documentation file
├── start-server.sh                # Local server startup script
├── cloudflare-tunnel-config.yml   # Cloudflare tunnel configuration
├── resume.pdf                     # Your resume (add this file)
└── favicon.ico                    # Website icon (optional)
```

## 🎨 Latest Design Features

### Enhanced Visual Appeal
- **Brand-Colored Social Links**: LinkedIn (blue), GitHub (dark), Resume (red), Email (orange)
- **Centered Tech Stack**: Professional hashtag-style technology tags
- **Multi-Icon Articles**: Main topic icons with secondary technology indicators
- **Hover Animations**: Smooth transitions with brand-specific shadows
- **Responsive Design**: Optimized for all screen sizes

### Professional Layout
- **Concise Bio**: Recruiter-focused content with business impact emphasis
- **Visual Tech Stack**: `#Python/Pyspark`, `#SQL`, `#Databricks`, `#Airflow`, `#Excel/PowerBI`
- **Real Project Showcase**: 5 authentic articles with appropriate tech icons

## 🌐 Local Development & Hosting

### Quick Start (Already Running)
A Python HTTP server is currently running on port 8080:
- **Local access**: http://localhost:8080
- **Network access**: http://YOUR_LOCAL_IP:8080

### Using the Startup Script
Make the script executable and run:
```bash
chmod +x start-server.sh
./start-server.sh
```

**Available options:**
1. **Python HTTP Server** (Simple, no dependencies)
2. **Node.js Live Server** (Auto-reload on changes)
3. **PHP Server** (If you have PHP installed)

### Manual Server Options

#### Option 1: Python HTTP Server
```bash
# Basic server
python3 -m http.server 8080

# Bind to all interfaces (accessible from network)
python3 -m http.server 8080 --bind 0.0.0.0
```

#### Option 2: Node.js Live Server (Recommended for Development)
```bash
# Install globally
npm install -g live-server

# Run with auto-reload
live-server --port=8080 --host=0.0.0.0

# Features: auto-refresh, better error handling
```

#### Option 3: PHP Built-in Server
```bash
php -S 0.0.0.0:8080
```

### Finding Your Local IP Address
```bash
# macOS/Linux
ifconfig | grep "inet " | grep -v 127.0.0.1

# Or specifically for macOS
ipconfig getifaddr en0  # WiFi
ipconfig getifaddr en1  # Ethernet
```

## ☁️ Cloudflare Tunnel Setup

### Prerequisites
1. **Cloudflare Account**: Free account at [cloudflare.com](https://cloudflare.com)
2. **Domain**: Either owned domain or Cloudflare subdomain
3. **Cloudflared**: Tunnel client software

### Step 1: Install Cloudflared
```bash
# macOS with Homebrew
brew install cloudflared

# Or download from GitHub releases
# https://github.com/cloudflare/cloudflared/releases
```

### Step 2: Authenticate with Cloudflare
```bash
# Opens browser for authentication
cloudflared tunnel login
```

### Step 3: Create a Tunnel
```bash
# Create named tunnel
cloudflared tunnel create portfolio-site

# Note the UUID displayed - you'll need it for configuration
```

### Step 4: Configure DNS
```bash
# Replace YOUR_TUNNEL_UUID and your-domain.com with your values
cloudflared tunnel route dns YOUR_TUNNEL_UUID your-domain.com

# For subdomain
cloudflared tunnel route dns YOUR_TUNNEL_UUID portfolio.your-domain.com
```

### Step 5: Update Configuration File
Edit `cloudflare-tunnel-config.yml`:
```yaml
tunnel: YOUR_TUNNEL_UUID
credentials-file: /Users/YOUR_USERNAME/.cloudflared/YOUR_TUNNEL_UUID.json

ingress:
  - hostname: your-domain.com
    service: http://localhost:8080
  - hostname: portfolio.your-domain.com  
    service: http://localhost:8080
  - service: http_status:404
```

### Step 6: Run the Tunnel
```bash
# Using configuration file
cloudflared tunnel --config cloudflare-tunnel-config.yml run

# Or quick temporary tunnel (generates random subdomain)
cloudflared tunnel --url http://localhost:8080
```

### Tunnel Management
```bash
# List all tunnels
cloudflared tunnel list

# Delete a tunnel
cloudflared tunnel delete YOUR_TUNNEL_UUID

# Run tunnel in background (macOS/Linux)
nohup cloudflared tunnel --config cloudflare-tunnel-config.yml run &
```

## 🌐 Public Deployment Options

### GitHub Pages
1. Push code to GitHub repository
2. Go to repository Settings > Pages
3. Select source branch (usually `main`)
4. Your site will be available at `https://yourusername.github.io/repository-name`

### Netlify
1. Drag and drop your project folder to [netlify.com](https://netlify.com)
2. Your site will be live instantly with a custom URL

### Vercel
1. Import project to [vercel.com](https://vercel.com)
2. Connect your GitHub repository
3. Deploy with zero configuration

## 🎨 Quick Style Examples

### Purple Theme
```css
body {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
```

### Green Theme
```css
body {
    background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
}
```

### Dark Theme
```css
body {
    background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);
}
```

## 💡 Pro Tips

### Design & Development
1. **Icon Consistency**: Use icons from the same family (all `fas` or all `fab`)
2. **Color Harmony**: Use a color palette generator for consistent colors
3. **Image Optimization**: Compress your profile photo for faster loading
4. **Content First**: Write your content before designing around it
5. **Test Responsively**: Check your site on different screen sizes
6. **Update Regularly**: Keep your articles and information current

### Local Development
7. **Live Reload**: Use `live-server` for automatic refresh during development
8. **Network Testing**: Test on mobile devices using your local IP address
9. **Port Conflicts**: If port 8080 is busy, try 8000, 3000, or 9000
10. **Cloudflare Tunnels**: Use temporary tunnels for quick sharing with clients/recruiters

### Performance & SEO
11. **Lighthouse Testing**: Use Chrome DevTools to check performance scores
12. **Meta Tags**: Ensure title and description are optimized for search
13. **Social Preview**: Test how your site looks when shared on social media

## 🔍 Font Awesome Icon Reference

Visit [fontawesome.com/icons](https://fontawesome.com/icons) to find icons. Use the format:
- `fas fa-icon-name` for solid icons
- `fab fa-brand-name` for brand icons
- `far fa-icon-name` for regular icons

## 🆘 Troubleshooting

### Icons Not Showing
- Check that Font Awesome CDN link is in your HTML head
- Verify icon names are correct (copy from Font Awesome website)
- Ensure internet connection for CDN resources

### Layout Issues
- Check for missing closing tags (`</div>`)
- Validate HTML structure
- Clear browser cache and hard refresh (Cmd+Shift+R / Ctrl+Shift+R)

### Local Server Issues
- **Port Already in Use**: Try different port (`python3 -m http.server 3000`)
- **Network Access Denied**: Check firewall settings, ensure `0.0.0.0` binding
- **Cannot Access from Network**: Verify local IP address and network connectivity
- **Server Not Starting**: Check if Python/Node.js/PHP is properly installed

### Cloudflare Tunnel Issues
- **Authentication Failed**: Run `cloudflared tunnel login` again
- **Tunnel Not Found**: Verify UUID in configuration file
- **DNS Not Resolving**: Wait up to 24 hours for DNS propagation
- **502 Bad Gateway**: Ensure local server is running on specified port
- **Permission Denied**: Check tunnel credentials file path and permissions

### Mobile Issues
- Test on actual devices, not just browser resize
- Check viewport meta tag is present
- Verify responsive breakpoints work correctly

### Performance Issues
- **Slow Loading**: Optimize images, check network connectivity
- **Font Awesome Loading**: Consider self-hosting icons for faster load times
- **Large Profile Image**: Compress image file size while maintaining quality

---

**Built with ❤️ for data professionals who want a beautiful, customizable portfolio website.** 
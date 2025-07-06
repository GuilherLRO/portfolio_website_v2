# Data Professional Portfolio Website

A clean, modern single-page portfolio website designed for data professionals to showcase their profile, social links, and published articles.

## 🚀 Getting Started

1. **Open the website**: Simply open `index.html` in your web browser
2. **Customize your content**: Edit the HTML and CSS files to match your information
3. **Add your photo**: Replace the placeholder image with your own profile picture

## 📝 How to Customize

### Update Your Information

Edit `index.html` to update:

- **Your Name**: Change "Your Name" in the `<h1 class="name">` tag
- **Your Title**: Update "Data Scientist | Analytics Expert" in the `<h2 class="title">` tag
- **Your Bio**: Replace the bio text in the `<p class="bio">` section
- **Profile Photo**: Replace the placeholder image URL with your own photo
- **Social Links**: Update the URLs in the social links section:
  - LinkedIn: Replace `https://linkedin.com/in/yourprofile`
  - GitHub: Replace `https://github.com/yourusername`
  - Resume: Add your resume PDF and update the link

### Add Your Articles

Update the article cards in the `articles-section`:
- **Article Titles**: Change the text in `<h3 class="article-title">` tags
- **Article Previews**: Update the descriptions in `<p class="article-preview">` tags
- **Article Links**: Replace the example URLs with your actual article links

### Customize Colors and Styling

Edit `style.css` to change:
- **Background Colors**: Modify the gradient in the `body` selector
- **Accent Colors**: Change the hover colors and link colors
- **Typography**: Update font sizes, weights, and families
- **Spacing**: Adjust padding and margins as needed

## 📱 Features

- **Responsive Design**: Looks great on desktop, tablet, and mobile
- **Modern Styling**: Clean, professional appearance with subtle animations
- **SEO Friendly**: Proper HTML structure and meta tags
- **Fast Loading**: No heavy frameworks, just clean HTML/CSS
- **Easy to Customize**: Simple, well-commented code

## 🔧 File Structure

```
portfolio_website_v2/
├── index.html          # Main website file
├── style.css           # All styling and responsive design
├── README.md          # This file
└── resume.pdf         # Your resume (add this file)
```

## 💡 Tips for Customization

1. **Profile Photo**: Use a square image (at least 400x400px) for best results
2. **Resume**: Add your resume as `resume.pdf` in the same folder
3. **Colors**: The website uses a blue/purple gradient theme, but you can easily change this
4. **Articles**: You can add more article cards by copying the existing structure
5. **Social Links**: You can add more social links by following the same pattern

## 🌐 Deployment

You can deploy this website to:
- **GitHub Pages**: Push to GitHub and enable Pages
- **Netlify**: Drag and drop the folder to Netlify
- **Vercel**: Import the project to Vercel
- **Any web hosting service**: Upload the files to your server

## 🎨 Customization Examples

### Change the Background Color
```css
body {
    background: linear-gradient(135deg, #your-color-1 0%, #your-color-2 100%);
}
```

### Update Social Link Colors
```css
.social-links a:hover {
    background: #your-color;
    color: white;
}
```

### Modify Article Card Hover Effects
```css
.article-card:hover {
    transform: translateY(-5px);
    border-color: #your-accent-color;
}
```

---

**Built with ❤️ for data professionals who want a simple, beautiful portfolio website.** 
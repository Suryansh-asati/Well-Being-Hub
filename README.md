# Well Being Hub

A comprehensive mental wellness platform designed to support emotional well-being through various therapeutic resources and interactive features.

## 🌟 Overview

Well Being Hub is a web-based application that provides users with multiple therapeutic approaches to mental wellness, including audio therapy, yoga therapy, educational resources, and interactive games. The platform aims to be a one-stop solution for stress relief and emotional healing.

## 🚀 Features

### Core Services
- **Audio Therapy**: Curated music playlists, podcasts, and audiobooks for relaxation
- **Yoga Therapy**: Guided yoga poses with detailed instructions and benefits
- **Laughing Therapy**: Memes, videos, and laughter exercises for mood enhancement
- **Educational Resources**: Information on hygiene, science, and art & craft
- **Mindfulness Game**: Interactive maze game to promote positive thinking

### Additional Features
- **Chatbot Integration**: AI-powered support for user queries
- **User Authentication**: Secure login and signup functionality
- **Responsive Design**: Mobile-friendly interface
- **Progressive Web App**: Offline functionality with service worker
- **Interactive UI**: Smooth animations and transitions

## 🛠️ Technology Stack

### Frontend
- **HTML5**: Semantic markup structure
- **CSS3**: Custom styling with responsive design
- **JavaScript**: Interactive functionality and DOM manipulation
- **AOS (Animate On Scroll)**: Smooth scroll animations
- **Bootstrap**: CSS framework for responsive components

### Libraries & Frameworks
- **Typed.js**: Typewriter effect animations
- **Owl Carousel**: Image and content carousels
- **Font Awesome**: Icon library
- **Google Fonts**: Typography enhancement

### Backend & Database
- **PHP**: Server-side scripting for authentication
- **MySQL**: Database for user management
- **Firebase**: Authentication services

### Development Tools
- **Service Worker**: PWA functionality
- **Lottie**: Animation library for interactive elements

## 📁 Project Structure

```
Well-Being-Hub/
├── assets/                 # Images and media files
├── css/                   # Stylesheets
│   ├── style.css         # Main styles
│   ├── audio.css         # Audio therapy styles
│   ├── yoga.css          # Yoga therapy styles
│   ├── laugh.css         # Laughing therapy styles
│   ├── education.css     # Education section styles
│   ├── game.css          # Game interface styles
│   └── specialTherapy.css # Chatbot styles
├── htmls/                # HTML pages
│   ├── audioTherapy.html
│   ├── yogatherapy.html
│   ├── laughTherapy.html
│   ├── education.html
│   ├── game.html
│   ├── specialTherapy.html
│   └── login.html
├── js/                   # JavaScript files
│   ├── script.js
│   ├── game.js
│   ├── script-login.js
│   └── serviceworker.js
├── index.html            # Main landing page
├── login.php             # Login functionality
├── signup.php            # User registration
└── manifest.json         # PWA manifest
```

## 🎯 Key Pages

### 1. Home Page (index.html)
- Hero section with typewriter animation
- Services overview
- About section
- FAQ section
- Footer with navigation links

### 2. Audio Therapy (htmls/audioTherapy.html)
- Spotify playlist integration
- Curated audiobook collection
- Podcast recommendations
- Relaxing nature sounds

### 3. Yoga Therapy (htmls/yogatherapy.html)
- Detailed yoga pose instructions
- Benefits of each asana
- Video tutorials
- Progress tracking

### 4. Game Section (htmls/game.html)
- Interactive mindfulness maze
- Positive thinking exercises
- Score tracking system
- Restart functionality

### 5. Chatbot (htmls/specialTherapy.html)
- AI-powered conversation
- Mental health support
- Lottie animations
- User-friendly interface

## 🎨 Design Features

### Visual Elements
- **Modern UI**: Clean and intuitive interface design
- **Responsive Layout**: Optimized for all device sizes
- **Dark Theme**: Eye-friendly color scheme
- **Smooth Animations**: AOS library for scroll animations
- **Custom Scrollbar**: Enhanced user experience

### User Experience
- **Loading Animations**: Engaging preloaders
- **Interactive Elements**: Hover effects and transitions
- **Accessibility**: Semantic HTML and ARIA labels
- **Cross-browser Compatibility**: Works across modern browsers

## 🚀 Getting Started

### Prerequisites
- Web server (Apache/Nginx)
- PHP 7.4 or higher
- MySQL database
- Modern web browser

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Well-Being-Hub
   ```

2. **Set up the database**
   - Create a MySQL database named `mindmate`
   - Update database credentials in `signup.php` and `login.php`

3. **Configure Firebase**
   - Update Firebase configuration in `js/script-login.js`

4. **Start the server**
   ```bash
   # Using PHP built-in server
   php -S localhost:8000
   
   # Or configure with Apache/Nginx
   ```

5. **Access the application**
   - Open `http://localhost:8000` in your browser

## 🔧 Configuration

### CSS Compatibility
Several CSS files include Safari vendor prefixes for `backdrop-filter`:

```css
-webkit-backdrop-filter: blur(10px);
backdrop-filter: blur(10px);
```

This ensures compatibility across browsers, particularly Safari 9+ and iOS Safari 9+.

### Service Worker
The application includes a service worker (`js/serviceworker.js`) for offline functionality and caching.

## 📱 Progressive Web App

The application is configured as a PWA with:
- Offline functionality
- App manifest for installation
- Service worker for caching
- Mobile-responsive design

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source and available under the MIT License.

## 📞 Contact

- **Email**: example@gmail.com
- **Location**: Bengaluru, India
- **GitHub**: [Project Repository](https://github.com/example/well-being-hub)

## 🔮 Future Enhancements

- Mobile app development
- AI-powered mood tracking
- Community features
- Advanced analytics
- Multilingual support
- Integration with wearable devices

---

**Well Being Hub** - Your Partner in Emotional Wellness and Healing 🧘‍♀️✨
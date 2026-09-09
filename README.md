# S. Rahul Prasath — Professional Portfolio

A premium, responsive personal portfolio website built with HTML5, CSS3, JavaScript, and Bootstrap 5.

## Quick Start

1. Open `index.html` in any modern web browser (Chrome, Firefox, Edge, Safari).
2. No build step or server required — works as static files.

**Optional local server (recommended for testing):**
```bash
# Python 3
python -m http.server 8000

# Then visit: http://localhost:8000
```

The contact form requires the portfolio to be opened through a web server. It will not submit when an HTML file is opened directly with a `file://` URL.

## Project Structure

```
portfolio/
├── index.html          # Home page with hero section
├── about.html          # About me & education timeline
├── skills.html         # Skills dashboard
├── projects.html       # Project showcase
├── certificates.html   # Certificate gallery with modal viewer
├── experience.html     # Experience & achievements timeline
├── contact.html        # Contact form & info
├── resume.html         # Online resume & PDF download
├── css/
│   └── style.css       # All styles (dark/light theme)
├── js/
│   └── script.js       # All JavaScript (data + features)
├── images/
│   ├── profile/        # Profile photo
│   ├── projects/       # Project screenshots
│   └── certificates/   # Certificate images
├── assets/
│   ├── favicon.svg
│   └── resume.pdf      # Add your resume PDF here
└── README.md
```

## Customization Guide

### 1. Profile Photo
Replace the placeholder with your real photo at:
```
images/profile/profile.jpg
```
Recommended: Square image, at least 400×400px.

### 2. Certificate Images
Add certificate images to:
```
images/certificates/certificate1.jpg
images/certificates/certificate2.jpg
images/certificates/certificate3.jpg  (add more as needed)
```

The portfolio already includes two certificate entries in `js/script.js` → `DEFAULT_CERTIFICATES`. Replace the image files while keeping these names, or update the `image` paths in that array:
```javascript
{
  id: 3,
  title: "Your Certificate Name",
  organization: "Issuing Organization",
  date: "Month Year",
  description: "Short description of the certificate.",
  skills: ["Skill 1", "Skill 2"],
  image: "images/certificates/certificate3.jpg"
}
```

### 3. Project Images
Add project screenshots to:
```
images/projects/project1.jpg
images/projects/project2.jpg
images/projects/project3.jpg
images/projects/project4.jpg
```

The portfolio already includes four project entries in `js/script.js` → `DEFAULT_PROJECTS`. Replace the image files while keeping these names, or update the `image` paths in that array. Then update project links:
```javascript
liveDemo: "https://your-demo-url.com",
github: "https://github.com/yourusername/repo"
```

### 4. GitHub & LinkedIn Links
Update in `js/script.js` → `CONFIG`:
```javascript
const CONFIG = {
  email: 'your.email@example.com',
  linkedin: 'https://linkedin.com/in/yourprofile',
  github: 'https://github.com/yourusername',
  // ...
};
```

Also update links in HTML files (footer, contact page) — search for `#` and `your.email@example.com`.

### 5. Resume PDF
Add your resume at:
```
assets/resume.pdf
```
The download button will automatically work once the file exists.

### 6. Important: GitHub Pages Deployment
Browser uploads from the Add Certificate, Add Project, Profile Photo, and Resume controls are saved only in that browser's `localStorage`. They are useful for previewing content on one device, but they are not uploaded to GitHub and other visitors cannot see them.

To publish content permanently for every device:

1. Put the real profile photo in `images/profile/profile.jpg`.
2. Put certificate scans in `images/certificates/` and project screenshots in `images/projects/`.
3. Put the resume PDF in `assets/resume.pdf`.
4. Commit and push the changed files to GitHub.
5. In GitHub, open **Settings → Pages**, choose **Deploy from a branch**, select the main branch and root folder, and wait for deployment.

Use lowercase filenames and keep the paths exactly as written. GitHub Pages is case-sensitive, so `Profile.jpg` and `profile.jpg` are different files.

### 7. Experience / Achievements
Add items in `js/script.js` → `experienceData`:
```javascript
{
  id: 8,
  type: "Hackathon",
  title: "Event Name",
  organization: "Organization Name",
  date: "2025",
  description: "Brief description."
}
```

### 8. Contact Form (FormSubmit)
The contact form uses FormSubmit and sends messages to `rahulprasath070@gmail.com` through its AJAX endpoint. Before the first real submission:

1. Deploy the site to a web host such as GitHub Pages, Netlify, or Vercel.
2. Open the deployed `contact.html` page and send a test message.
3. Check `rahulprasath070@gmail.com` for FormSubmit's activation email and click **Activate Form**.
4. Send the test message again after activation.

The form needs to run from `http://` or `https://`; it cannot submit from a `file://` URL. If the recipient email changes, update the FormSubmit URL in `contact.html` and the matching email values in `js/script.js`.

For GitHub Pages, push this folder to a repository, enable **Settings → Pages → Deploy from a branch**, select the main branch and root folder, then open the generated site URL.

## Features

- Responsive design (320px – 1440px+)
- Dark / Light theme toggle (saved in localStorage)
- Sticky navigation with mobile hamburger menu
- Hero typing animation
- Scroll reveal animations
- Dynamic project & certificate rendering
- Full-screen certificate modal with zoom & navigation
- Project detail modal
- Contact form validation
- Resume PDF download with fallback message
- Back-to-top button
- SEO meta tags & Open Graph
- Accessibility (ARIA, keyboard nav, reduced motion)
- Graceful image fallbacks

## Technologies

- HTML5, CSS3, JavaScript ES6+
- Bootstrap 5 (CDN)
- Font Awesome 6 (CDN)
- Google Fonts (Inter, Space Grotesk)

## Browser Support

Chrome, Firefox, Edge, Safari — latest versions.

---

© 2026 S. Rahul Prasath. All Rights Reserved.

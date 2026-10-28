# FindIt

FindIt helps students avoid leaving home without their everyday essentials. It is a static website built with HTML, CSS and JavaScript. There is no backend and no account; all data stays in the browser (localStorage).

## Features
- **Dashboard**: progress stats, today's essentials, weekly streak
- **My checklist**: add, check and delete items, attach photos (resized in the browser)
- **Routines**: one-click starter lists for campus days, exams and labs
- **Leave mode**: go through items one at a time, with confetti when ready and a daily streak
- **Lost & Found board**: post lost or found items with photos, search, filter, and automatic possible-match detection
- **Dark mode**, responsive layout, keyboard-friendly controls
- **How it works**: project explanation page for presentations

## Tech
HTML5, CSS3 (custom properties, grid, flexbox), vanilla JavaScript, localStorage, Canvas API.

## Run locally
Double-click `run-findit.bat` (needs Python 3), or run:

    python -m http.server 8000

then open http://127.0.0.1:8000/index.html

## Publish with GitHub Pages
1. Create a new repository on GitHub and upload all these files (or push them, see below).
2. Go to **Settings > Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**, branch `main`, folder `/ (root)`, and save.
4. After about a minute the site is live at `https://YOUR-USERNAME.github.io/REPO-NAME/`.

## Push from the command line

    git init
    git add .
    git commit -m "FindIt: final year project"
    git branch -M main
    git remote add origin https://github.com/YOUR-USERNAME/REPO-NAME.git
    git push -u origin main

## Project structure
    index.html, checklist.html, routines.html, leave.html, lostfound.html, guide.html
    app.css / app.js        shared design and core checklist logic
    extras.css / extras.js  dark mode, streak, leave mode, lost & found
    campus-hero.png         dashboard illustration

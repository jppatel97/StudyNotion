Live Demo:https://studynotion.info/
# StudyNotion
StudyNotion - A full-featured MERN stack online learning platform with Docker, GitLab CI/CD, and production deployment. Features user authentication, course management, payments, and responsive UI.

---

## 🚀 Project Overview
StudyNotion is a scalable, production-grade online course platform. It supports user authentication, course creation, payments, and more, with a modern React frontend and robust Node/Express backend.

---

## ✨ Features
- User authentication (signup, login, OTP verification)
- Instructor and student dashboards
- Course and category management
- Video uploads and streaming
- Payment integration (Razorpay)
- Responsive, modern UI
- Admin controls
- Production deployment with Docker, Nginx, and GitLab CI/CD

---

## 🛠️ Tech Stack
- **Frontend:** React, Redux, Tailwind CSS
- **Backend:** Node.js, Express.js
- **Database:** MongoDB
- **Payments:** Razorpay
- **Email:** Nodemailer
- **DevOps:** Docker, Nginx, GitLab CI/CD, AWS EC2

---

## 📁 Project Structure
```
Study-Notion/
├── Dockerfile            # Frontend Dockerfile
├── docker-compose.yml    # (optional) Compose for local dev
├── package.json          # Frontend dependencies
├── public/               # Static assets, favicon, index.html
├── src/                  # React source code
├── server/
│   ├── Dockerfile        # Backend Dockerfile
│   ├── package.json      # Backend dependencies
│   ├── index.js          # Express entry point
│   └── ...               # Backend routes, controllers, models
└── .gitlab-ci.yml        # GitLab CI/CD pipeline
```

---

## 🧑‍💻 Local Development
1. **Clone the repo:**
   ```sh
   git clone https://github.com/yourusername/studynotion.git
   cd studynotion
   ```
2. **Frontend:**
   ```sh
   npm install
   npm start
   ```
3. **Backend:**
   ```sh
   cd server
   npm install
   npm run dev
   ```
4. **Visit:**
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - Backend: [http://localhost:3000/api/v1](http://localhost:3000/api/v1)

---

## 🐳 Production Deployment (Docker + Nginx + GitLab CI/CD)
- **Build and run containers:**
  ```sh
  docker build -t studynotion-frontend .
  docker build -t studynotion-backend ./server
  docker run -d --name frontend -p 80:80 studynotion-frontend
  docker run -d --name backend -p 3000:3000 studynotion-backend
  ```
- **Nginx** proxies `/api/` to backend and serves frontend static files.
- **CI/CD:** Automated via `.gitlab-ci.yml` for build, push, and deploy to AWS EC2.

---

## 🔑 Environment Variables
Create `.env` files for both frontend and backend. Example for backend:
```
MONGODB_URL=your_mongodb_url
JWT_SECRET=your_jwt_secret
MAIL_USER=your_email
MAIL_PASS=your_email_password
RAZORPAY_KEY=your_razorpay_key
RAZORPAY_SECRET=your_razorpay_secret
```
Set these in GitLab CI/CD for production.

---

## 🤝 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.



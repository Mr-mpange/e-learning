# E-Learning Platform

A comprehensive Learning Management System built with Frappe Framework and Vue.js.

<div align="center">
	<img src=".github/hero.png?v=5" alt="Hero Image" width="72%" />
</div>

## 🚀 Quick Start

### Option 1: Docker (Recommended)
```bash
# Clone the repository
git clone https://github.com/Mr-mpange/e-learning.git
cd e-learning

# Quick start with Docker
./quick_start.bat
```

### Option 2: Interactive Setup
```bash
# Run the interactive launcher
./run_all.bat
```

### Option 3: Manual Docker Setup
```bash
cd docker
docker-compose up -d
```

## 📋 What's Included

- **🎓 Course Management**: Create structured courses with chapters and lessons
- **👥 Batch Management**: Group learners and manage cohorts
- **📝 Quizzes & Assignments**: Interactive assessments and submissions
- **🎥 Live Classes**: Integrated Zoom classes for real-time learning
- **🏆 Certificates**: Automated certificate generation
- **📊 Analytics**: Track learning progress and statistics

## 🛠 Tech Stack

- **Backend**: Python + Frappe Framework
- **Frontend**: Vue.js 3 + Frappe UI
- **Database**: MariaDB
- **Cache**: Redis
- **Build Tools**: Vite, TypeScript, Tailwind CSS
- **Testing**: Cypress

## 🔧 Development Scripts

| Script | Description |
|--------|-------------|
| `run_all.bat` | Interactive launcher with multiple options |
| `quick_start.bat` | One-click Docker startup |
| `stop_all.bat` | Stop all services |

## 🌐 Access Points

After starting the services:

- **LMS Frontend**: http://localhost:8000/lms
- **Admin Panel**: http://localhost:8000
- **Default Login**: Administrator / admin

## 📁 Project Structure

```
├── lms/                    # Main Python module
├── frontend/               # Vue.js frontend
├── docker/                 # Docker configuration
├── run_all.bat            # Development launcher
├── quick_start.bat        # Quick Docker start
└── stop_all.bat           # Stop services
```

## 🔄 Development Workflow

1. **Start Development**: Run `quick_start.bat`
2. **Make Changes**: Edit files in `lms/` or `frontend/`
3. **Test**: Access http://localhost:8000/lms
4. **Stop Services**: Run `stop_all.bat`

## 📚 Key Features

### Structured Learning
Design courses with a 3-level hierarchy where courses contain chapters, and chapters contain lessons.

### Live Classes
Create Zoom-integrated live classes for batches with automatic attendance tracking.

### Assessment Tools
- Single/multiple choice quizzes
- Open-ended questions
- PDF/document assignments
- Automated grading

### Certification System
Generate certificates automatically upon course completion with customizable templates.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the AGPL-3.0 License.

## 🆘 Support

- **Issues**: [GitHub Issues](https://github.com/Mr-mpange/e-learning/issues)
- **Documentation**: [Frappe LMS Docs](https://docs.frappe.io/learning)

---

Built with ❤️ using Frappe Framework
![Java](https://img.shields.io/badge/Java-8-red)
![JPA](https://img.shields.io/badge/JPA-2.1-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Neon-336791)
![GlassFish](https://img.shields.io/badge/GlassFish-4.1.1-FF6600)

# 🎓 Student Performance Tracker

A full-stack Java EE web application for lecturers to track, analyze, and manage student test performance with real-time cloud database integration.

## 📌 Live Demo
> Coming soon - Deployed to cloud hosting

## ✨ Features

### Current Features (Implemented)

| Feature | Description |
|---------|-------------|
| ➕ **Add Students** | Register students with ID, name, age, gender, and test marks |
| 📊 **Test Statistics** | View pass/fail rates, gender distribution, highest/lowest/average marks |
| 📈 **Visual Charts** | Interactive charts using Chart.js (pass/fail, gender performance) |
| 🔍 **Search by ID** | Find specific student using their unique ID number |
| 🔍 **Search by Name** | Find students by first name and surname |
| 🔍 **Search by Age Range** | Find students within minimum and maximum age |
| 🃏 **3D Profile Card** | Interactive flip card showing student details |
| 🎉 **Confetti Celebration** | Visual feedback when student is successfully added |
| ⏳ **Loading Spinner** | User feedback during cloud database operations |
| ☁️ **Cloud Database** | PostgreSQL on Neon (serverless, auto-scaling) |

### Upcoming Features (In Development)

| Feature | Description | Status |
|---------|-------------|--------|
| ✏️ **Update Student** | Edit existing student details (name, age, marks) | 🔄 In Progress |
| 🗑️ **Delete Student** | Remove a student record from the database | 🔄 In Progress |
| 📋 **Edit Marks** | Update test scores without changing other details | 📅 Planned |
| 📎 **Bulk Import** | Upload multiple students via CSV/Excel | 📅 Planned |
| 📄 **Export to PDF** | Generate printable reports of statistics | 📅 Planned |


## 🛠️ Tech Stack

### Backend
- **Java EE 7** - Enterprise Edition
- **EJB (Enterprise Java Beans)** - Business logic layer
- **JPA (Java Persistence API)** - Object-relational mapping
- **Servlets** - Request handling
- **JSP** - View rendering

### Frontend
- **HTML5 / CSS3** - Structure and styling
- **JavaScript** - Interactivity
- **Chart.js** - Data visualization
- **Canvas-Confetti** - Celebration effects

### Database & Server
- **PostgreSQL** - Cloud database (Neon)
- **GlassFish 4.1.1** - Application server
- **EclipseLink** - JPA provider

## 📁 Project Structure

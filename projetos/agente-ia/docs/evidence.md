# Evidências e Execuções de Teste

Este diretório conterá screenshots, logs e relatórios gerados durante os testes.  

**Relatório de testes Replit - 27/11/2025**

# nayra.dev - Portfolio

## Overview
This is a personal portfolio website for Náyra Zanini, showcasing her work as a Junior Programmer specializing in SQL Server and database development. The portfolio includes articles, projects, and study materials related to software engineering and database management.

## Project Structure
- `index.html` - Main portfolio homepage
- `artigos/` - Technical articles about software engineering topics
- `estudos/` - Study materials from post-graduate courses and complementary learning
- `projetos/` - Practical projects including:
  - `Projetos-de-Estudo/` - Learning projects (calculators, logic exercises)
  - `agente-ia/` - AI agent for SQL learning (Node.js project with tests)
- `server.js` - Express server for serving static content
- `package.json` - Root package configuration

## Technologies Used
- **Frontend**: HTML5, JavaScript (vanilla), Tailwind CSS (via CDN)
- **Backend**: Node.js with Express for static file serving
- **Subproject (agente-ia)**: Express API with Jest testing framework

## Current State
- Portfolio server configured to run on port 5000
- All HTML paths updated to work without GitHub Pages base path
- Navigation tested and working correctly
- Deployment configured for Replit autoscale

## Setup & Running
The project is automatically configured in Replit:
1. Dependencies are installed automatically
2. Server runs on port 5000 (0.0.0.0)
3. Workflow "Portfolio Server" serves the static site

## Architecture Notes
- Static site served via Express for compatibility with Replit deployment
- Tailwind CSS loaded via CDN (not production-optimized)
- agente-ia subproject is self-contained with its own package.json

## Recent Changes (November 27, 2025)
- Imported from GitHub repository
- Updated all paths from `/nayra.dev-portfolio/` to `/` for Replit environment
- Set up Express static server on port 5000
- Configured deployment settings for autoscale
- Fixed agente-ia dependencies (updated supertest version)
- Created .gitignore and project documentation

## User Preferences
Not yet established - first setup session

## Future Considerations
- Consider building Tailwind CSS for production instead of using CDN
- The agente-ia subproject could be expanded with additional features
- All project features are currently functional in development mode


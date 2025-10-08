📂 Meeting Files Management Database
✨ Overview
This repository documents the design and implementation of a simple Relational Database Management System (RDBMS) focused on managing the lifecycle of files, meetings, and user interactions.

The primary objective was to design a normalized schema that efficiently handles the storage and linkage between Users, Meetings, Files associated with those meetings, and the subsequent Interactions (such as comments or votes) on those files.

💾 Database Schema & Technology
Component	Description
Technology	PostgreSQL (Scripts provided are compatible with PostgreSQL).
Data Model	A simple, normalized model consisting of five core tables: Users, Meetings, Files, Interactions, and Votes.
Functionality	Tracks meeting details, links users to meeting organization and file uploads, and records granular interactions and voting specific to files and meetings.

🚀 Repository Contents
The repository is structured to provide both the database structure and sample data, ready for immediate deployment in a containerized environment.

File/Directory	Description
create_db.sql	Contains the Data Definition Language (DDL) script to create the five tables and their relationships (Primary and Foreign Keys, and CHECK constraints).
populate_data.sql	Contains the Data Manipulation Language (DML) script with sample data to populate all tables for testing and demonstration.
Dockerfile	Defines the environment by pulling a base PostgreSQL image and copying the SQL scripts for automatic database initialization.
docker-compose.yml	Defines the container service, exposes the database port, and launches the PostgreSQL instance easily.
🐳 Getting Started (Using Docker)
The easiest way to set up and explore this database is using Docker and Docker Compose.

Clone the repository:

Bash
git clone https://github.com/Al-Zoraiki-Mohammed/database-for-managing-meeting-files.git
cd your-repo-name
Launch the database container:
This command builds the image (if necessary) and starts the PostgreSQL container, automatically running the create_db.sql and populate_data.sql scripts.

Bash
docker compose up -d
Connect to the Database:
You can now connect to the database using any PostgreSQL client (like pgAdmin or DBeaver) with the following details:

Host: **localhost**

Port: **5432**

Database: **meeting_files_db**

User: **user**
Password: **password_secure**

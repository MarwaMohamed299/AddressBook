# BookAddress
📚 BookAddress
A simple address book management system built with ASP.NET Core 8 and Entity Framework Core.

✅ Prerequisites
Before getting started, make sure you have the following installed:

.NET 8 SDK

SQL Server or LocalDB

Visual Studio 2022+ (or any code editor that supports .NET)

(Optional) Postman or any API testing tool

🚀 Getting Started
Clone the repository:
bash
Copy
Edit
git clone https://github.com/MarwaMohamed299/AddressBook
cd BookAddress
Open the solution in Visual Studio (or any .NET-compatible editor).

Open the Package Manager Console in Visual Studio:

Tools > NuGet Package Manager > Package Manager Console
Apply the database migrations: using Command [Update-Database]

Make sure the project containing the DbContext is set as the Startup Project while updating database then make the BookAddress.BL the startup project .

Run the application:

From Visual Studio: Press F5 or click Run

Or from the terminal:

bash
Copy
Edit
dotnet run

# Features

✅ N-Tier Architecture – Clean separation of concerns using layered architecture (API,BusinessLayer , DataAcessLayer).

🔐 JWT Authentication – Secure authentication using JSON Web Tokens for protected endpoints.

📑 CRUD Operations – Full Create, Read, Update, Delete operations on address entities.

🔍 Advanced Search – Filter addresses by name, email, mobile number, job, department, and birthdate range.

👤 User Account Access – Authenticated users can view their own profile and private data securely.

📬 Input Validations – Built-in server-side validations on Email and Phone Number fields.

🛠️ Serilog Integration – Structured and file-based logging using Serilog for better diagnostics and debugging.

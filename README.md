# TaskJDBC - Java JDBC Learning Project

This project demonstrates working with JDBC and PostgreSQL database using Java.

## Project Setup

### Prerequisites
- Java 25
- Docker & Docker Compose
- Maven

### Database Setup
Start the PostgreSQL database using Docker Compose:
```bash
docker-compose up -d
```

Database credentials:
- **Database**: taskjdbc
- **Host**: localhost
- **Port**: 5432
- **Username**: admin
- **Password**: admin123

## Tasks

### Task 1: Add JDBC and PostgreSQL Connector to the Project
Add the necessary dependencies to `pom.xml`:
- PostgreSQL JDBC Driver
- Any other required dependencies

### Task 2: Implement `newConnection` Method for DataBaseConnectionFactory
Implement the `getConnection()` method in the `DataBaseConnectionFactory` class to:
- Establish a connection to the PostgreSQL database
- Use proper connection parameters

**File**: `src/main/java/org/example/db/DataBaseConnectionFactory.java`

### Task 3: Get All Existing Beverages with PreparedStatement
Implement the `getAllBeverage()` method in `BeverageService` class to:
- Use PreparedStatement to query all beverages from the database
- Map the ResultSet to Beverage entity objects
- Return a List of all beverages
- Handle SQL exceptions properly

**File**: `src/main/java/org/example/service/BeverageService.java`

### Task 4: Add New Beverage with PreparedStatement
Implement the `createBeverage(Beverage beverage)` method in `BeverageService` class to:
- Use PreparedStatement to insert a new beverage
- Set all beverage properties (name, type, price, quantity)
- Return the created beverage with its generated ID
- Handle SQL exceptions properly

**File**: `src/main/java/org/example/service/BeverageService.java`

### Task 5: Print to Console All Users' Beverages
Create functionality to:
- Retrieve all users from the database
- For each user, retrieve their orders
- For each order, retrieve the associated beverage
- Print formatted output showing which beverages each user has ordered
- Display user information, beverage details, and order information

**Suggested approach**:
- Create a UserService class (if needed)
- Create an OrderService class (if needed)
- Implement methods to fetch users, orders, and join with beverages
- Format and print the results in the Main class

## Project Structure
```
TaskJDBC/
├── docker/
│   └── init.sql              # Database initialization script
├── src/
│   └── main/
│       ├── java/
│       │   └── org/example/
│       │       ├── Main.java
│       │       ├── db/
│       │       │   └── DataBaseConnectionFactory.java
│       │       ├── entity/
│       │       │   ├── Beverage.java
│       │       │   ├── Order.java
│       │       │   └── User.java
│       │       └── service/
│       │           └── BeverageService.java
│       └── resources/
├── docker-compose.yml
├── pom.xml
└── README.md
```

## Running the Application
1. Start the database:
   ```bash
   docker-compose up -d
   ```

2. Build the project:
   ```bash
   mvn clean install
   ```

3. Run the application:
   ```bash
   mvn exec:java -Dexec.mainClass="org.example.Main"
   ```

## Database Schema
The database contains three main tables:
- **users**: User information
- **beverages**: Available beverages
- **orders**: Orders linking users to beverages

See `docker/init.sql` for the complete schema and sample data.

## Technologies Used
- Java 25
- Maven
- Lombok
- PostgreSQL 16
- JDBC
- Docker & Docker Compose


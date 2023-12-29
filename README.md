# COOKR the API

Welcome to the Recipe Database API! This Rails backend API allows users to access and manage a database of recipes. The API is secured using JSON Web Tokens (JWT) for authentication, and passwords are hashed using the Bcrypt gem for enhanced security.

## Table of Contents
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Authentication](#authentication)
  - [Endpoints](#endpoints)
- [Contributing](#contributing)
- [License](#license)

## Features

- User authentication using JWT.
- Secure password storage with Bcrypt.
- Access to a comprehensive database of recipes.
- Easy-to-use API endpoints for retrieving, creating, updating, and deleting recipes.

## Getting Started

### Prerequisites

Before you begin, make sure you have the following installed:

- Ruby
- Ruby on Rails
- Bundler

### Installation
1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/recipe-database-api.git

2. Navigate to the project directory:

   ```bash
   cd cookbook-api

3. Install dependencies:

    ```bash
    bundle install

4. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed

5. Start the Rails server:

    ```bash
    rails server

The API should now be running locally on http://localhost:3000.

## Usage
### Authentication
To access protected endpoints, include the JWT token in the Authorization header of your HTTP requests. You can obtain a token by authenticating with the `/login` endpoint.

Example:

    ```bash
    POST /login
    Content-Type: application/json
    
    {
      "email": "user@example.com",
      "password": "securepassword"
    }
The response will contain a `jwt` field, which you should include in subsequent requests.

### Endpoints
*  `GET /recipes`: Retrieve a list of all recipes.
*  `GET /recipes/:id`: Retrieve details for a specific recipe.
*  `POST /recipes`: Create a new recipe.
*  `PATCH /recipes/:id`: Update an existing recipe.
*  `DELETE /recipes/:id`: Delete a recipe.
Refer to the API documentation for detailed information on each endpoint and their required parameters.

### Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

### License
This project is licensed under the Reality Bytes™️ License.








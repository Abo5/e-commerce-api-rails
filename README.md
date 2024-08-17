
# My Rails API Project

## Overview

Welcome to My Rails API Project! This project is a robust API built with Ruby on Rails that handles e-commerce functionality such as managing categories, products, orders, order items, reviews, and users. The API is designed to be scalable, secure, and easy to use, making it a solid foundation for any e-commerce application.

## Features

- **Categories Management**: Create, view, and manage product categories.
- **Product Management**: Full CRUD (Create, Read, Update, Delete) operations for products with validation and error handling.
- **Order Management**: Manage customer orders, order items, and related data.
- **Reviews**: Allow users to leave reviews for products, including ratings and comments.
- **User Authentication**: Secure user authentication with Devise, including JWT-based sessions.
- **Product Images**: Manage product images linked to each product.
- **API Versioning**: Easily extendable API with versioning support.

## Technologies Used

- **Ruby on Rails**: The web application framework powering the API.
- **PostgreSQL**: The database used for storing all application data.
- **Devise**: For user authentication and session management.
- **JWT**: JSON Web Tokens for secure session handling.
- **ActiveModel Serializers**: For customizing the JSON responses.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Ruby (version 3.0 or higher)
- Rails (version 7.0 or higher)
- PostgreSQL (version 12 or higher)
- Node.js and Yarn (for managing JavaScript dependencies)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/my-rails-api-project.git
   cd my-rails-api-project
   ```

2. Install the necessary gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Start the Rails server:

   ```bash
   rails server
   ```

   The API will be available at `http://localhost:3000`.

### API Endpoints

#### Categories

- **GET /api/v1/categories** - Retrieve all categories.
- **GET /api/v1/categories/:id** - Retrieve a specific category with its associated products.

#### Products

- **GET /api/v1/products** - Retrieve all products.
- **GET /api/v1/products/:id** - Retrieve a specific product.
- **POST /api/v1/products** - Create a new product.
- **POST /api/v1/products/:id/update** - Update an existing product.
- **POST /api/v1/products/:id/delete** - Delete a product.

#### Orders

- **GET /api/v1/orders** - Retrieve all orders.
- **GET /api/v1/orders/:id** - Retrieve a specific order.
- **POST /api/v1/orders** - Create a new order.

#### Order Items

- **GET /api/v1/order_items** - Retrieve all order items.
- **GET /api/v1/order_items/:id** - Retrieve a specific order item.
- **POST /api/v1/order_items** - Create a new order item.

#### Reviews

- **GET /api/v1/reviews** - Retrieve all reviews.
- **GET /api/v1/reviews/:id** - Retrieve a specific review.
- **POST /api/v1/reviews** - Create a new review.

#### Users

- **GET /api/v1/users** - Retrieve all users.
- **GET /api/v1/users/:id** - Retrieve a specific user.
- **POST /api/v1/users** - Create a new user.

### Testing the API with Postman

To test the API, you can use Postman. Here's how to set up the requests:

1. Open Postman and create a new collection for this project.
2. Add a new request for each endpoint listed above.
3. Set the appropriate HTTP method (GET, POST, DELETE) and URL (e.g., `http://localhost:3000/api/v1/categories`).
4. If the endpoint requires a body (e.g., for creating a new product), select `Body`, choose `raw`, and set the content type to `JSON`. Then, add the JSON payload.
5. Send the request and check the response.

### Contributing

If you'd like to contribute to this project, please fork the repository and use a feature branch. Pull requests are welcome.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### Contact

For any questions or issues, please contact me at [your-email@example.com](mailto:your-email@example.com).

---

Thank you for checking out My Rails API Project! I hope you find it useful for your development needs.
```

Feel free to replace the placeholders like `your-username` and `your-email@example.com` with your actual information. This `README.md` file provides a comprehensive overview of your project, how to set it up, and how to interact with the API endpoints using Postman.# e-commerce-api-rails

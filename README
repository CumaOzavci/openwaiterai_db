# OpenWaiterAI PostgreSQL Database
This repository provides a PostgreSQL database setup for the OpenWaiterAI project using Docker Compose. It includes initialization scripts to set up your database schema and seed data automatically on first startup.

## Overview

The project uses the official PostgreSQL Docker image along with a custom Docker Compose configuration. On initial startup, two SQL scripts are executed:

- **`01_schema.sql`**: Contains the schema definitions (tables, indexes, etc.).
- **`02_data.sql`**: Contains the seed data to populate the tables.

These scripts are mounted into the PostgreSQL container and are executed only when the database is created for the first time.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/CumaOzavci/openwaiterai_db.git
   cd openwaiterai_db
   ```

2. **Configure Environment Variables:**

    Set below environment variables:

   ```
   OPENWAITERAI_DB_HOST=your_host
   OPENWAITERAI_DB_NAME=your_database_name
   OPENWAITERAI_DB_USER=your_database_user
   OPENWAITERAI_DB_PASSWORD=your_database_password
   OPENWAITERAI_DB_PORT=your_port
   ```

   > **Note:** The `OPENWAITERAI_DB_PORT` is used as the host port. PostgreSQL always listens on port `5432` inside the container.

3. **Start the Database Container:**

   Run the following command to start the PostgreSQL container:

   ```bash
   docker-compose up -d
   ```

4. **Verify Initialization:**

   Check the container logs to verify that the initialization scripts ran correctly:

   ```bash
   docker logs openwaiterai_db
   ```

   Look for messages indicating that `01_schema.sql` and `02_data.sql` were executed.

## Important Notes

- **One-Time Initialization:** The SQL scripts under `/docker-entrypoint-initdb.d/` are executed only when the PostgreSQL data directory is empty. If you need to reinitialize the database, remove the Docker volume by running:
  
  ```bash
  docker-compose down -v
  ```
  
  Then restart the container with `docker-compose up -d`.

- **Volume Name:** The PostgreSQL data is stored in a Docker volume named `openwaiterai_db_data` for persistent storage.

## Stopping the Container

To stop the container, run:

```bash
docker-compose down
```

If you want to remove the associated volume (thus deleting the database data), run:

```bash
docker-compose down -v
```


## Data
Data is scrapped from the official [Tavuk Dünyası](https://www.tavukdunyasi.com/tr-en/) website with ChatGPT's search tool. It might contain wrong values. Menu items can be found in `menu_item_datas.py`. Also you can find database filling script at `enter_menu_item.py`.

## License
This project and data is licensed under the [MIT License](LICENSE).

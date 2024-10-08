# WordPress with Docker

Easily set up and managed local WordPress development using Docker, MySQL, and phpMyAdmin.

## Getting Started

1. [Install Docker](https://docs.docker.com/get-docker/) on your system.
2. Clone this repository.
3. Create a `.env` file by copying `.env-sample`:  
   `cp .env-sample .env`
4. Configure the required values in the `.env` file. These values will be used to set up MySQL and initialize the database for your WordPress site.
5. Run the following command inside the project directory:  
   `docker-compose up -d`
6. Access your WordPress installation by navigating to [http://localhost:8000](http://localhost:8000) in your browser.
7. Complete the WordPress installation process.
8. Your website is now ready for development!

> **Note:**  
> WordPress is exposed on port `8000`, and phpMyAdmin is on port `8080`. You can modify these ports in the `.env` file if they are already being used on your system.

If this is your first time running the setup, Docker will pull the necessary images from Docker Hub, which may take a few minutes. Subsequent starts will be much faster.

---

## Key Commands

- **Stop Containers:**  
  `docker-compose down`
  
- **Rebuild Containers:**  
  `docker-compose build`

For more information on Docker Compose, refer to the official [Docker Compose reference](https://docs.docker.com/compose/reference/).

---

## Acknowledgment

This setup is intended for local development only and is not production-ready.

My [`docker-compose.yml`](https://github.com/IamLizu/wp-docker/blob/master/docker-compose.yml) is an improved version of [Brad's `docker-compose.yml` for WordPress](https://gist.github.com/bradtraversy/faa8de544c62eef3f31de406982f1d42). (Kudos to [Brad Traversy](https://github.com/bradtraversy/) for his contributions to the community.)

As of the creation of this repository, using Brad's version may result in a database connection issue if your database name is anything other than `wordpress`.

Keep learning and create your own awesome Compose file! Don't forget to share it [here](https://github.com/IamLizu/wp-docker/discussions/1). Let's talk about it!

---

## Additional Instructions

### Build WordPress with Docker

To start Docker Desktop on Ubuntu (Noble 24.04) and build the environment:

```bash
# Start Docker Desktop
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
systemctl --user start docker-desktop

# Build and start containers
docker compose up -d

# Fix permissions for phpMyAdmin
sudo chmod -R 777 phpmyadmin/themes/
```

### Remove Docker WordPress

To remove all Docker resources related to WordPress:

```bash
# Stop and remove containers
docker compose down

# Remove all containers, images, and volumes
docker system prune -a

# WARNING: Be cautious when working with other projects like Prestashop
sudo rm -R mysql/ wordpress/ logs/ phpmyadmin/
```

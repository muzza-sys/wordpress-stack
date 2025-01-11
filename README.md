# 🚀 Optimized WordPress Docker Stack

## 🔥 Quick Start

1. **Clone the repository**  
   ```bash
   git clone https://github.com/muzza-sys/wordpress-optimized-stack.git
   cd wordpress-optimized-stack
   ```

2. **Configure your environment**  
   ```bash
   cp .env.example .env
   nano .env
   ```

3. **Start the stack**  
   ```bash
   docker-compose up -d
   ```

4. **You're done! 🎉**  
   - WordPress is running on your domain.  
   - Backups are automatically uploaded to S3 every hour.  

---

## 💾 Features

- ⚡ **Optimized Stack**: NGINX + PHP-FPM + MariaDB + Redis  
- 🔒 **Auto SSL**: SSL with Let's Encrypt (Auto-renewal)  
- 📦 **Incremental Backups**: Automatic backups to AWS S3 every hour  
- 🔄 **Fully Automated Deployment**: Clone → Configure → Deploy  

---

## 🔥 **Completely Automated Workflow**

1. **Clone the Repo** → **Edit `.env`** → **Run `docker-compose up -d`**  
2. Docker will automatically:
   - Configure WordPress with a database. (If you have a pre-exsisting WP.sql file, place into init_db before starting stack)
   - Schedule hourly backups to S3.  
   - Manage cron jobs for backups (inside Docker).  

---

## 🛠️ **Optional Commands**

- **View running containers:**  
  ```bash
  docker ps
  ```

- **Stop the stack:**  
  ```bash
  docker-compose down
  ```

- **Run manual backup:**  
  ```bash
  docker exec wordpress_backup /backup.sh
  ```

---

## 🌐 **Access Your Site**

- **HTTP:** `http://yourdomain.com`  
- **HTTPS:** `https://yourdomain.com` (after SSL setup)  

---

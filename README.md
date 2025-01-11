# Optimized WordPress Docker Stack

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/muzza-sys/wordpress-optimized-stack.git
   cd wordpress-optimized-stack
   ```

2. **Configure your environment:**
```cp .env.example .env
nano .env
```

3. **Deploy the stack:**
 ```chmod +x scripts/deploy.sh
./scripts/deploy.sh
```
4. **Visit your site:**
Open http://yourdomain.com in your browser.


🔥 Features
NGINX + PHP-FPM + MariaDB + Redis
SSL with Let's Encrypt (Auto-renewal)
FastCGI Caching
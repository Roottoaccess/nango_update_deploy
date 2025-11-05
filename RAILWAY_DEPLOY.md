# Railway Deployment Guide for Nango

## Option 1: Deploy via GitHub (Recommended)

Since `railway up` is timing out due to network issues, the most reliable way is to deploy via GitHub:

1. **Push your code to GitHub:**
   ```bash
   git init  # if not already a git repo
   git add .
   git commit -m "Initial commit"
   git remote add origin <your-github-repo-url>
   git push -u origin main
   ```

2. **In Railway Dashboard:**
   - Go to https://railway.com/project/5eb72f3a-8b7c-4f1d-b271-01b572a10b51
   - Click "New" → "GitHub Repo"
   - Select your repository
   - Railway will auto-detect the Dockerfile

3. **Configure the service:**
   - Settings → Start Command: `SERVER_PORT=$PORT npm run start -w @nangohq/nango-server`
   - Variables → Add all variables from the script below

4. **Add Database Add-ons:**
   - Click "New" → "Database" → "PostgreSQL"
   - Click "New" → "Database" → "Redis"

5. **Set Environment Variables:**
   Run the setup script after service is created, or manually add them in the UI.

## Option 2: Manual CLI Setup (After Service Creation)

Once the service is created via UI or GitHub, run:

```bash
./setup-railway-vars.sh
```

## Required Environment Variables

- `NANGO_ENCRYPTION_KEY`: `LZd2Q8B/iGMQAotigp/KV3FB3WxiBqJH6aqmkswnv+w=`
- `FLAG_SERVE_CONNECT_UI`: `false`
- `LOG_LEVEL`: `info`
- `SERVER_PORT`: `$PORT` (Railway provides this automatically)
- `NANGO_SERVER_URL`: `https://<your-railway-domain>.railway.app`
- `NANGO_PUBLIC_SERVER_URL`: `https://<your-railway-domain>.railway.app`
- `RECORDS_DATABASE_URL`: From PostgreSQL add-on connection string
- `NANGO_DB_USER`: From PostgreSQL add-on
- `NANGO_DB_PASSWORD`: From PostgreSQL add-on
- `NANGO_DB_HOST`: From PostgreSQL add-on
- `NANGO_DB_NAME`: From PostgreSQL add-on
- `NANGO_DB_SSL`: `true`

## Access Your Deployment

Once deployed, access at: `https://<your-service>.railway.app`


#!/bin/bash

# Railway Environment Variables Setup Script for Nango
# Run this after your Railway service is created

echo "Setting up Railway environment variables for Nango..."

# Required variables
railway variables --set "NANGO_ENCRYPTION_KEY=LZd2Q8B/iGMQAotigp/KV3FB3WxiBqJH6aqmkswnv+w="
railway variables --set "FLAG_SERVE_CONNECT_UI=false"
railway variables --set "LOG_LEVEL=info"

# Note: You'll need to set these after getting your Railway domain:
# railway variables --set "NANGO_SERVER_URL=https://<your-domain>.railway.app"
# railway variables --set "NANGO_PUBLIC_SERVER_URL=https://<your-domain>.railway.app"

# Database variables - get these from your PostgreSQL add-on:
# railway variables --set "RECORDS_DATABASE_URL=<postgres-connection-string>"
# railway variables --set "NANGO_DB_USER=<db-user>"
# railway variables --set "NANGO_DB_PASSWORD=<db-password>"
# railway variables --set "NANGO_DB_HOST=<db-host>"
# railway variables --set "NANGO_DB_NAME=<db-name>"
# railway variables --set "NANGO_DB_SSL=true"

echo "✅ Basic variables set!"
echo "⚠️  Don't forget to:"
echo "   1. Add PostgreSQL and Redis add-ons in Railway UI"
echo "   2. Set NANGO_SERVER_URL and NANGO_PUBLIC_SERVER_URL after deployment"
echo "   3. Set database connection variables from PostgreSQL add-on"


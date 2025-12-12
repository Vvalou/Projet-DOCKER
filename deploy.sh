#!/bin/bash
set -e

echo "🐳 Build et Deploy"

# Validation
echo "1. Validation docker-compose..."
docker compose config > /dev/null
echo "✓ Compose valide"

# Build
echo "2. Build des images..."
docker compose build
echo "✓ Build OK"

# Deploy
echo "3. Déploiement..."
docker compose down -v 2>/dev/null || true
docker compose up -d
echo "✓ Deploy OK"

# Attente
echo "4. Attente des services..."
sleep 10

# Vérification
echo "5. Vérification..."
docker compose ps

echo ""
echo "✅ Terminé!"
echo "Frontend: http://localhost:8080"
echo "API: http://localhost:3000/status"

#!/bin/bash

# AI Virtual Agent - Development Environment Stop Script

set -e

# Change to project root directory
cd "$(dirname "$0")/../../.."

echo "🛑 Stopping AI Virtual Agent Development Environment..."

# Stop all services (including all profiles)
podman compose -f deploy/local/compose.dev.yaml --profile attachments down

echo "✅ All services stopped successfully"
echo ""
echo "💡 To remove all data (including database):"
echo "   podman compose -f deploy/local/compose.dev.yaml --profile attachments down --volumes"
echo ""
echo "🔄 To restart:"
echo "   make local/dev-compose-up"

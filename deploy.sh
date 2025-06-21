echo "Deploying to $WORK_DIR"
cd "$WORK_DIR"
echo "Saving current commit..."
git rev-parse HEAD > .prev-deploy || true
echo "Pulling latest code..."
git reset --hard
git pull origin main

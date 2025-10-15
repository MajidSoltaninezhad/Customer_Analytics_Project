#!/bin/bash

# اگر پیامی داده نشده بود، پیش‌فرض "Update"
MSG=${1:-"Update"}

# Stage all changes
git add .

# Commit with message
git commit -m "$MSG"

# Push to main branch (replace with master if needed)
git push origin main

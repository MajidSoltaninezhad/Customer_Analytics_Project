#!/bin/bash

# --- Setup GitHub Project in VS Code ---
# Author: Majid Nezhad

echo "💡 Enter your GitHub repository URL:"
read REPO_URL

# استخراج نام ریپازیتوری از URL
REPO_NAME=$(basename "$REPO_URL" .git)

echo "🚀 Cloning $REPO_NAME ..."
git clone "$REPO_URL"

if [ $? -ne 0 ]; then
  echo "❌ Failed to clone repository. Please check your URL or internet connection."
  exit 1
fi

cd "$REPO_NAME" || exit

# تنظیم نام و ایمیل (فقط در صورتی که قبلاً تنظیم نشده)
if ! git config user.name >/dev/null; then
  echo "🧩 Setting up Git config..."
  git config --global user.name "MajidNezhad"
  git config --global user.email "nezhad.majid@gmail.com"
fi

# باز کردن پروژه در VS Code
echo "🪄 Opening project in VS Code..."
code .

echo "✅ All done! Happy coding, Majid 🚀"

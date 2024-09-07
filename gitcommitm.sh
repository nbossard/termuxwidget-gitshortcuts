cd ~/storage/documents/obsperso

# Prompt the user for a commit message
echo "Enter commit message: "
read commit_message

# Use the user provided commit message
git commit -m "$commit_message"

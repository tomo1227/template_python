# #  ~/.gitconfigの設定
echo "start to copy local ~/.gitconfig"
git config --global --add safe.directory $1

git config pull.rebase false
git config --global commit.template .commit_template

pip install --no-cache-dir --upgrade pip

REQUIREMENTS_FILE="../requirements.txt"

# ファイルが存在するかどうかを確認
if [ -f "$REQUIREMENTS_FILE" ]; then
    echo "ファイルが存在します: $REQUIREMENTS_FILE"
    pip install --no-cache-dir -r "$REQUIREMENTS_FILE"
else
    echo "ファイルが存在しません: $REQUIREMENTS_FILE"
fi
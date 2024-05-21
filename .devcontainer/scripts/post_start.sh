# #  ~/.gitconfigの設定
echo "start to copy local ~/.gitconfig"
git config --global --add safe.directory $1

git config pull.rebase false
git config --global commit.template .commit_template

pip install --no-cache-dir --upgrade pip
pip install --no-cache-dir poetry

poetry config virtualenvs.create false

poetry install
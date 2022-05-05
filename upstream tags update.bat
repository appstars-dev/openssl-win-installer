git clone https://github.com/DragonZX/openssl.git
cd openssl
git remote add upstream https://github.com/openssl/openssl.git

# Update:
git fetch upstream
git rebase upstream/master
git push
git push --tags

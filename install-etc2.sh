

# Install vscode
brew install --cask visual-studio-code 

# Install git flow
brew install git-flow

# Install python3
brew install python@3.9

$(brew --prefix)/bin/python3.9

echo 'alias python3="/usr/local/bin/python3"' >> .zshrc

echo "export PATH=/usr/local/bin:$PATH" >> ~/.zshrc

# $(brew --prefix)/opt/python@3.9/libexec/bin
# $(brew --prefix)/lib/python3.9/site-packages

python3 -V 
pip3 -V 

# pip install All
pip3 install -r requirements.txt


# Install Chrome Driver
brew install --cask chromedriver

# Test robot command

robot

# Install Docker
brew install docker

docker -v
docker-compose -v

## Test Hello World
docker run hello-world


# Install Nodejs
brew install node@15

# install newman
npm install -g newman@5.2.1

echo 'export PATH="/usr/local/opt/icu4c/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/icu4c/sbin:$PATH"' >> ~/.zshrc

# export LDFLAGS="-L/usr/local/opt/icu4c/lib"
# export CPPFLAGS="-I/usr/local/opt/icu4c/include"


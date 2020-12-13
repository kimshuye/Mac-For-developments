# Mac-For-developments

## Install XCode

https://www.freecodecamp.org/news/how-to-download-and-install-xcode/


## Install Brew


```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```


# Define git user
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
## install git flow 


Download and install Homebrew:


```
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
```


Then install git flow:

```
brew install git-flow
```


https://markshust.com/2012/05/02/easiest-way-install-git-flow-mac-os-x/


## Install python3 by brew


```
brew install python3
# or
brew install python@3.9

```


### Optional, PATH environment


```
echo "export PATH=/usr/local/bin:$PATH" >> ~/.zshrc

```



## pip Update

```
python3 -m pip install --upgrade pip

# pip3 version 20.3
# python3 version 3.9
```


## VSCode code .” Not working in Command Line for Visual Studio Code on OSX/Mac

1. Make sure you drag Visual Studio Code app into the -Applications- folder

Otherwise (as noted in the comments) you'll have to go through this process again after reboot


2. Next, open Visual Studio Code

Open the Command Palette via (⇧⌘P) and type shell command to find the Shell Command:


```
> Install 'code' command in PATH** command.
```


https://stackoverflow.com/questions/29955500/code-not-working-in-command-line-for-visual-studio-code-on-osx-mac


## Install Robot Framework

```
pip3 install robotframework==3.2.2
pip3 install robotframework-seleniumlibrary==4.5.0
```

## pip install All 

```
pip3 install -r requirements.txt
```

## Install Chrome Driver


```
brew cask install chromedriver
# or
brew --cask install chromedriver
```

http://kenst.com/2015/03/installing-chromedriver-on-mac-osx/


## Test robot command


```
robot
```

Output:

```
[ ERROR ] Expected at least 1 argument, got 0.

Try --help for usage information.
```

## Run robot to google.com

```
obot google.robot
```

```
==============================================================================
Google                                                                        
==============================================================================
Open google page and input keywords "Robot Framework"                 | PASS |
------------------------------------------------------------------------------
Google                                                                | PASS |
```


## maybe you can't run robot command try Install python by brew

```
brew install python3
```


## Install Docker

```
brew install docker

```

https://medium.com/crowdbotics/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3


## Test run docker

Check docker After install


```
docker -v
docker-compose -v
# docker version 19.03.13, build 4484c46d9d
# docker-compose version 1.27.4
```


## Install Docker Desktop

run Docker.dmg

https://www.docker.com/get-started


## Install Docker Compose on macOS

เมื่อติดตั้ง docker Desktop จะได้ docker-compose มาด้วย


## Test Hello World


```
docker run hello-world
```


## Install Nodejs


```
brew install node@15
```


### Install nodejs by GUI 


https://nodejs.org/en/download/


node-v15.3.0.pkg



## install newman

```
npm install -g newman@5.2.1
```


## Install Google SDK


```
brew install --cask google-cloud-sdk

export CLOUDSDK_PYTHON="$(brew --prefix)/opt/python@3.9/libexec/bin/python"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

```

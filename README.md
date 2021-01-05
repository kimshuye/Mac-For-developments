# Mac-For-developments

## Install XCode

https://www.freecodecamp.org/news/how-to-download-and-install-xcode/


## Install Homebrew

by bash

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

by ruby

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
```

# Define git user

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## install git flow 


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
robot google.robot
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
brew install docker-machine docker docker-compose
brew install --cask docker-machine docker docker-compose

```

https://medium.com/crowdbotics/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3


## Test run docker

Check docker After install


```sh
docker -v
docker-compose -v
docker-machine -v
# Docker version 19.03.14, build 5eb3275
# docker-compose version 1.27.4, build unknown
# docker-machine version 0.16.2, build bd45ab1
```

## install Kubernetes CLI

```
brew install kubernetes-cli
```

## Test run Kubernetes

```bash
kubectl version

# Client Version: version.Info{Major:"1", Minor:"20", GitVersion:"v1.20.1", GitCommit:"c4d752765b3bbac2237bf87cf0b1c2e307844666", GitTreeState:"clean", BuildDate:"2020-12-19T08:38:20Z", GoVersion:"go1.15.5", Compiler:"gc", Platform:"darwin/amd64"}
# The connection to the server localhost:8080 was refused - did you specify the right host or port?
```


## Install Docker Desktop

run Docker.dmg

https://www.docker.com/get-started


*เมื่อติดตั้ง docker Desktop จะได้ docker-compose มาด้วย


## Test Hello World


```
docker run hello-world
```

# envsubst

substitute shell variables in text

## Quick Example

`envsubst` will attempt to substitute all variable by default:

```
$ echo 'substituting ${TEST} ${ALT} ${NADA}' | TEST=abc ALT=alt envsubst
substituting abc alt
```
Or you can give it a constrained list of variables to interpolate:

```
$ echo 'substituting ${TEST} ${ALT} ${NADA}' | TEST=abc ALT=alt envsubst '$TEST:$ALT'
substituting abc alt ${NADA}
```

## MacOSX Installation

Easy to install with homebrew:

```
$ brew install gettext
```

But note the formula is keg-only, which means it was not symlinked into /usr/local.
So while you could directly reference `/usr/local/opt/gettext/bin/envsubst` or add that to the path,
`brew link` can be used to add the symlinks:

```
$ brew link --force gettext
$ which envsubst
/usr/local/bin/envsubst
```

When done, you can unlink if desired:
```
$ brew unlink gettext
```

## Credits and References
* [envsubst: command not found on Mac OS X 10.8](http://stackoverflow.com/questions/23620827/envsubst-command-not-found-on-mac-os-x-10-8)
* [man envsubst](http://www.unix.com/man-page/linux/1/envsubst/)
* [gettext](http://brewformulas.org/gettext) - brew formula doc
* [gettext.rb](https://github.com/Homebrew/homebrew/blob/master/Library/Formula/gettext.rb) - brew formula source



## Install Nodejs


```
brew install node@15
```


output:


```bash
node -v
npm -v
# v15.4.0
# 7.0.15
```


### Install nodejs by GUI 


https://nodejs.org/en/download/


node-v15.3.0.pkg



## install newman

```
npm install -g newman@5.2.1
```


output:

```bash
newman -v
# 5.2.1
```


## Install mysql client


```
brew install mysql-client
```


## Install Google SDK


```
brew install --cask google-cloud-sdk

export CLOUDSDK_PYTHON="$(brew --prefix)/opt/python@3.9/libexec/bin/python"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

```


# GCloud

## Env

```

export CLOUDSDK_CORE_PROJECT=sun-ops
export CLUSTER_NAME=cluster-sun
export SERVICE_ACCOUNT=xxx-compute@developer.gserviceaccount.com

```

## Set workspace

```
export CLOUDSDK_CORE_PROJECT=sun-ops

gcloud config set project ${CLOUDSDK_CORE_PROJECT}
```

## Create clusters

```
export CLUSTER_NAME=cluster-sun

gcloud container clusters create ${CLUSTER_NAME} --num-nodes=1 --region=us-central1-c
```

## See describe

```

gcloud container clusters describe ${CLUSTER_NAME} --region=us-central1-c
```

## Create a JSON service account key for the service account.


```
gcloud iam service-accounts keys create ~/key.json --iam-account ${SERVICE_ACCOUNT}
```

* `service_account_key`: The service account key which will be used for authentication. This key should be [created](https://cloud.google.com/iam/docs/creating-managing-service-account-keys), encoded as a [Base64](https://en.wikipedia.org/wiki/Base64) string (eg. `cat my-key.json | base64` on macOS), and stored as a [secret](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets). 





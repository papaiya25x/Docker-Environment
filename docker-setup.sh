#!/bin/sh
set -e

# aptパッケージの更新
sudo apt-get update

# パッケージをインストール
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Dockerの公式GPGキーを追加
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# 安定したリポジトリを設定
sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/debian \
     $(lsb_release -cs) \
     stable"

# aptパッケージの更新
sudo apt-get update

# Docker インストール
sudo apt-get install docker-ce docker-ce-cli containerd.io

# docker-compose インストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

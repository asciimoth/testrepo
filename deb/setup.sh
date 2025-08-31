#!/bin/sh
curl "https://asciimoth.github.io/testrepo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/asciimoth-testrepo.gpg > /dev/null
curl https://asciimoth.github.io/testrepo/deb/list_file.list | sudo tee /etc/apt/sources.list.d/asciimoth-testrepo.list > /dev/null
sudo apt update


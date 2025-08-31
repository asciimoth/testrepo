#!/bin/sh
curl https://asciimoth.github.io/testrepo/rpm/repo.repo | sudo tee /etc/yum.repos.d/asciimoth.repo
sudo dnf clean all


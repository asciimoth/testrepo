# ASCIIMoth's repo

# DEB
To add this repo to your system:
```sh
curl "https://asciimoth.github.io/testrepo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/asciimoth-testrepo.gpg > /dev/null
curl https://asciimoth.github.io/testrepo/deb/list_file.list | sudo tee /etc/apt/sources.list.d/asciimoth-testrepo.list > /dev/null
sudo apt update
```

Or just run `curl https://asciimoth.github.io/testrepo/deb/setup.sh | bash`

# RPM
To add this repo to your system:
```sh
curl https://asciimoth.github.io/testrepo/rpm/repo.repo | sudo tee /etc/yum.repos.d/asciimoth.repo
sudo dnf clean all
```

Or just run `curl https://asciimoth.github.io/testrepo/rpm/setup.sh | bash`


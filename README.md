# ASCIIMoth's repo
- [/deb](https://asciimoth.github.io/testrepo/deb) - [deb repo](#deb)
- [/rpm](https://asciimoth.github.io/testrepo/rpm) - [rpm repo](#rpm)

# DEB
To add this repo to your system:
```sh
curl "https://asciimoth.github.io/testrepo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/asciimoth-testrepo.gpg > /dev/null
curl https://asciimoth.github.io/testrepo/deb/list_file.list | sudo tee /etc/apt/sources.list.d/asciimoth-testrepo.list > /dev/null
sudo apt update
```

Or just run `curl https://asciimoth.github.io/testrepo/deb/setup.sh | bash`

# RPM
TODO




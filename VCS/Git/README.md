# Git/GitHub/GitLab

---

The ```Homebrew``` contains various build and installation scripts.



## Folder Structure Conventions

---

```
    /
    ├── <Name>                  # The verson control system
    └── README.md
```



## Git Commands

---

### GitHub SSH Keys

- Generating a new SSH key ([Reference](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key))
```shell
ssh-keygen -t ed25519 -C “email”
eval "$(ssh-agent -s)"
open ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

- Adding a new SSH key to your account ([Reference](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account))
```shell
pbcopy < ~/.ssh/id_ed25519.pub
```

- Test your SSH Connection
```shell
ssh -T git@github.com
```


- Git Default Configs
```shell
git config --global user.name “Rohtash“
git config --global user.email “email”

```

- Verify Git Configs
```shell
git config --list
```


# Author

---

- Rohtash Lakra

# CloudWatch

---

The ```CloudWatch``` contains various .



## Folder Structure Conventions

---

```
    /
    ├── Cheatsheets             # The Cheatsheets
    ├── Computer                # The Computer
    ├── Cultural                # The Cultural
    ├── Interview Guide         # An Interview Guide
    └── README.md
```



## CloudWatch Filter Query

```
fields @timestamp, @message, @logStream, @log
| filter strcontains(@message, "42ae41edec1c4954904c276c3a60a645")
| sort @timestamp desc
| limit 100
```


# Author

---

- Rohtash Lakra


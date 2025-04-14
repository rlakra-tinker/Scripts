# CloudWatch

```
fields @timestamp, @message, @logStream, @log
| filter strcontains(@message, "42ae41edec1c4954904c276c3a60a645")
| sort @timestamp desc
| limit 100
```

# Reference


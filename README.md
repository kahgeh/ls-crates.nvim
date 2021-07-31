# ls-crates.nvim

A simple plugin that gets the latest version from crates.io for the crate.

When editing cargo.toml, e.g. 

```
[dependencies]
tower=""

```

executing the `insert_latest_version` method will result in the version being populated 


```
[dependencies]
tower="0.4.8"
```

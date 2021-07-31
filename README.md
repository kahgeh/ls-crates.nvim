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

# References

- original source for `api.lua` - https://github.com/akinsho/dependency-assist.nvim/blob/main/lua/dependency_assist/api.lua
- original source for `crates_api.lua` - https://github.com/akinsho/dependency-assist.nvim/blob/main/lua/dependency_assist/rust/crates_api.lua

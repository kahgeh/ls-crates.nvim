local api = require("crates_api")

local M = {}

function M.get_latest_versions(crate_name)
  local function on_receive_get_package_result(data)
    local MAX_VERSIONS = 5
    local i=1
    local versions = ""
    while i<=MAX_VERSIONS and i <= #data.versions  do
      if i > 1 then
        versions = versions .. ", "
      end
      versions = versions .. data.versions[i].num
      i=i+1
    end
    print(versions)
  end

  api.get_package(crate_name, on_receive_get_package_result)
end

local function get_crate_name()
  local line = vim.api.nvim_get_current_line()
  return string.gsub( vim.split(line,"=")[1], " ", "" )
end

function M.insert_latest_version()
  local function on_receive_get_package_result(data)
    vim.api.nvim_input("i" .. data.crate.max_version)
  end
  local crate_name =get_crate_name()
  api.get_package(crate_name, on_receive_get_package_result)
end

return M



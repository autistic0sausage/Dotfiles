local M = {}

local opts = { noremap = true, silent = true }

-- Keymap helper function
-- @param custom_opts: table of user-specified options to override defaults
-- @param mode: string or table specifying the mode(s), e.g., 'n' for normal, 'i' for insert
-- @param lhs: string representing the key combination to map (left-hand side)
-- @param rhs: string representing the command to execute when lhs is pressed (right-hand side)
function M.Keymap(custom_opts, mode, lhs, rhs)
  local merged_opts = vim.tbl_extend("force", opts, custom_opts or {})
  vim.keymap.set(mode, lhs, rhs, merged_opts)
end

local function escape_wildcards(path)
  return path:gsub("([%[%]%?%*])", "\\%1")
end

--- Returns a function which matches a filepath against the given glob/wildcard patterns.
--- Also works with zipfile/tarfile buffers (via `strip_archive_subpath`).
function M.root_pattern(...)
  local patterns = vim.iter({ ... }):flatten():totable()

  return function(startpath)
    startpath = vim.fn.fnamemodify(startpath, ":p")

    for _, pattern in ipairs(patterns) do
      local match = vim.search_ancestors(startpath, function(path)
        for _, p in ipairs(vim.fn.glob(table.concat({ escape_wildcards(path), pattern }, "/"), true, true)) do
          if vim.uv.fs_stat(p) then
            return path
          end
        end
      end)

      if match ~= nil then
        return match
      end
    end
  end
end

function M.insert_package_json(root_files, field, fname)
  return M.root_markers_with_field(
    root_files,
    { "package.json", "package.json5" },
    field,
    fname
  )
end

return M


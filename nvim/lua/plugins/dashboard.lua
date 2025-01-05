return {
  "folke/snacks.nvim",
  opts = function()
    -- Function to load quotes from a specific file
    local function load_quotes(file)
      local ok, quotes = pcall(require, "plugins.dashboard." .. file)
      if not ok then
        vim.notify("Failed to load quotes: " .. file, vim.log.levels.ERROR)
        return {}
      end
      return quotes
    end

    -- Function to load all quotes from multiple collections
    local function load_all_quotes()
      local collections = {
        -- Add your collections here
        "literature",
        "movies",
        "personal",
        "games",
        "logo",
      }
      local all_quotes = {}

      for _, collection in ipairs(collections) do
        local quotes = load_quotes(collection)
        all_quotes = vim.tbl_extend("force", all_quotes, quotes)
      end

      return all_quotes
    end

    -- Function to randomize and select a quote
    local function header_randomizer()
      local quotes = load_all_quotes()
      math.randomseed(os.time())
      local quote = quotes[math.random(#quotes)]

      if quote.author then
        return string.rep("\n", 2) .. quote.text .. "\n\n" .. "- " .. quote.author .. string.rep("\n", 6)
      else
        return quote.text .. string.rep("\n", 4)
      end
    end

    -- Set up your dashboard configuration
    return {
      dashboard = {
        preset = {
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          {
            header = header_randomizer(),
            align = "center",
          },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    }
  end,
}

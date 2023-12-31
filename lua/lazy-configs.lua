local lazypath = vim.fn.stdpath("cache") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local opts = {
  root = vim.fn.stdpath("cache") .. "/lazy",
  lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json",
}

require("lazy").setup("plugins", opts)

-- File: ~/.config/nvim/lua/plugins/disabled.lua

-- Ini adalah spec untuk menonaktifkan plugin yang tidak diinginkan.
-- Plugin ini berasal dari LazyVim default atau yang mungkin terdeteksi dari konfigurasi lama.
return {
  -- Plugin yang Terkait Autocomplete / AI / Suggestion Berlebihan
  -- { "mini.ai", enabled = false }, -- Text objects dengan AI
  -- { "mini.pairs", enabled = false }, -- Autocomplete kurung/tanda kutip
  { "blink.cmp", enabled = false }, -- Plugin autocomplete yang tidak esensial
  --{ "snacks.nvim", enabled = false }, -- Snippet tambahan

  -- Plugin UI yang tidak esensial / potensi boros RAM
  -- { "noice.nvim", enabled = false }, -- Pengganti UI notifikasi
  --{ "bufferline.nvim", enabled = false }, -- Tab buffer visual

  -- Plugin kenyamanan / fitur tambahan yang tidak esensial
  --{ "persistence.nvim", enabled = false }, -- Menyimpan dan memuat sesi
  --{ "lazydev.nvim", enabled = false }, -- Untuk pengembangan plugin
  --{ "grug-far.nvim", enabled = false }, -- Pencarian/penggantian canggih (Telescope sudah cukup)
  --{ "todo-comments.nvim", enabled = false }, -- Pelacak TODO/FIXME

  -- Plugin linter visual (sudah digantikan oleh conform.nvim untuk formatting)
  { "nvim-lint", enabled = false },

  { "nvim-lspconfig", enabled = false },
}

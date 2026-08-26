# mytheme.nvim (scaffold)

Estructura base para un colorscheme de Neovim, lista para renombrar y llenar
con tu propia paleta.

## Cómo renombrar `mytheme` por el nombre real de tu plugin

Desde la raíz del proyecto (ejemplo cambiando a "kiroi"):

```bash
# 1. Renombrar carpetas y archivos
mv lua/mytheme lua/kiroi
mv colors/mytheme.vim colors/kiroi.vim

# 2. Reemplazar todas las referencias "mytheme" -> "kiroi" en el código
grep -rl "mytheme" . | xargs sed -i 's/mytheme/kiroi/g'
```

## Probarlo localmente (lazy.nvim)

```lua
{
  dir = "~/ruta/a/mytheme.nvim",
  name = "mytheme",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("mytheme")
  end,
}
```

## Flujo de trabajo recomendado

1. Define tu paleta en `lua/mytheme/colors.lua` (es el único archivo con hex codes).
2. Ajusta `lua/mytheme/highlights/editor.lua` — esto define cómo se ve el "chrome"
   del editor (Normal, StatusLine, Pmenu, etc.). Pruébalo antes de tocar sintaxis.
3. Ajusta `lua/mytheme/highlights/syntax.lua` — grupos clásicos de Vim
   (Comment, String, Function, Keyword...). Esto ya cubre plugins/lenguajes
   que no usan Treesitter.
4. Ajusta `lua/mytheme/highlights/treesitter.lua` — grupos `@capture` modernos,
   usados por la mayoría de los parsers hoy en día.
5. Ajusta `lua/mytheme/highlights/lsp.lua` — diagnósticos (error/warn/info/hint).
6. Cuando quieras soporte de plugins externos (nvim-tree, gitsigns, cmp, etc.),
   crea un archivo nuevo en `lua/mytheme/highlights/plugins/<nombre>.lua` con
   la misma forma (`M.setup(config)` retornando una tabla de grupos) y agrégalo
   a la lista `hl_files` en `lua/mytheme/highlights/init.lua`.

## Notas

- Ningún archivo de highlights debe tener hex codes hardcodeados: siempre
  referencian `palette.nombreDelColor`.
- `config.transparent`, `config.dimInactive`, `config.undercurl` y los
  `*Style` ya están cableados como ejemplo de opciones configurables por el
  usuario vía `require("mytheme").setup({...})`.

require('onedark').setup {
    style = 'deep'
}

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("carbonfox")


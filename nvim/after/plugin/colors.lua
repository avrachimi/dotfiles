require('onedark').setup {
    style = 'deep'
}

function ColorMyPencils(color)
	color = color or "carbonfox"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("carbonfox")


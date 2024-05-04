require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

function ColorMyPencils(color)
	color = color or "carbonfox"
	vim.cmd.colorscheme(color)
end

-- ColorMyPencils("duskfox")


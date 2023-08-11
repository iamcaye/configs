function ColorMyPencils(color)
	color = color or "default"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

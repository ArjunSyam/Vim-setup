return {
	'ThePrimeagen/harpoon',
	config = function ()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local term = require("harpoon.term")

		vim.keymap.set("n","<leader>a",mark.add_file)
		vim.keymap.set("n","<C-e>",ui.toggle_quick_menu)
		vim.keymap.set("n","<F8>",function() ui.nav_file(1) end)
		vim.keymap.set("n","<F7>",function() ui.nav_file(2) end)
		vim.keymap.set("n","<F6>",function() ui.nav_file(3) end)
		vim.keymap.set("n","<F5>",function() ui.nav_file(4) end)

		--for terminal
		vim.keymap.set("n","<c-t>",function() term.gotoTerminal(1) end)
	end
}

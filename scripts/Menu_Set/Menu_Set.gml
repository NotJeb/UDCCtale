function Menu_Set(_menu = menu.menu_return, _menu_return = menu_battle_selector) {
	show_debug_message($"MENU: {menu._menu}, NEW MENU: {_menu}, RETURN MENU: {_menu_return}");
	instance_destroy(menu._menu);
	menu._menu = _menu;
	menu.menu_return = _menu_return;
}
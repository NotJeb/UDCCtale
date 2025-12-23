function Menu_Set(_menu = menu.menu_return, _menu_return = menu_battle_selector) {
	instance_destroy(menu._menu);
	menu._menu = _menu;
	menu.menu_return = _menu_return;
}
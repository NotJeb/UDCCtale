function Item_Custom(){
	{
		// Register item types here.
		var itemTypes=Item_GetTypeManager();
	
		// To create an item type, you need to first write code for your item type.
		// See CustomItem_Dice for more information.
		// We created an example item type "Dice" there.
	
		// After creating an item type, you need to register it to let the game know.
		// Item type id must be unique.
	
		// It's good practice to define a macro to make an alias for item type id.
		// This helps you reference the item type id more quickly and eliminate potential typos.
	
		// See CustomItem_Stick for help of ItemTypeSimple, a helper item base code.
		#macro ITEM_STICK "stick"
		itemTypes.Register(ITEM_STICK, new CustomItem_Stick());
	
		// See CustomItem_Bandage for healing item example.
		#macro ITEM_BANDAGE "bandage"
		itemTypes.Register(ITEM_BANDAGE, new CustomItem_Bandage());
		
		// See CustomItem_ToyKnife for help of equippable weapon.
		#macro ITEM_TOY_KNIFE "toy_knife"
		itemTypes.Register(ITEM_TOY_KNIFE, new CustomItem_ToyKnife());
	
		// See CustomItem_FadedRibbon for help of equippable armor.
		#macro ITEM_FADED_RIBBON "faded_ribbon"
		itemTypes.Register(ITEM_FADED_RIBBON, new CustomItem_FadedRibbon());
		
		// See CustomItem_PhoneTML for phone item example.
		#macro ITEM_PHONE_TML "phone_tml"
		itemTypes.Register(ITEM_PHONE_TML, new CustomItem_Phone_TML());
		
		#macro ITEM_DLECKON_FISH_AND_CHIPS "dleckon_fish_and_chips"
		itemTypes.Register(ITEM_DLECKON_FISH_AND_CHIPS, new CustomItem_Dleckon_FishAndChips());
		
		#macro ITEM_DLECKON_NOODLES "dleckon_noodles"
		itemTypes.Register(ITEM_DLECKON_NOODLES, new CustomItem_Dleckon_Noodles());
		
		#macro ITEM_DLECKON_CHOCOLATE "dleckon_chocolate"
		itemTypes.Register(ITEM_DLECKON_CHOCOLATE, new CustomItem_Dleckon_Chocolate());
		
		#macro ITEM_DLECKON_GHOST_ROBOTIC_SANDWICH "dleckon_ghost_robotic_sandwich"
		itemTypes.Register(ITEM_DLECKON_GHOST_ROBOTIC_SANDWICH, new CustomItem_Dleckon_GhostRoboticSandwich());
		
		#macro ITEM_DLECKON_SPACE_CEREALS "dleckon_space_cereals"
		itemTypes.Register(ITEM_DLECKON_SPACE_CEREALS, new CustomItem_Dleckon_SpaceCereals());
	
	}
	
	
	
	{
		// Register item types and inventories here.
		// Don't add items to inventories! Those are done in Player_CustomInitialData.
		var inventories=Item_GetInventoryManager();
	
		// After registering inventories, It's recommended to
		// create a function to quickly get these inventories.
		// See Inventory_GetFor___() below.
		inventories.Register("items",new Inventory(itemTypes,8));
		inventories.Register("phones",new Inventory(itemTypes,8));
		inventories.Register("box1",new Inventory(itemTypes,10));
		inventories.Register("box2",new Inventory(itemTypes,10));
	}
}

function Item_GetInventoryItems(){
	return Item_GetInventoryManager().Get("items");
}
function Item_GetInventoryPhones(){
	return Item_GetInventoryManager().Get("phones");
}
function Item_GetInventoryBoxes(index){
	var boxId="box1";
	switch(index){
		case 0:
			boxId="box1";
		case 1:
			boxId="box2";
	}
	return Item_GetInventoryManager().Get(boxId);
}
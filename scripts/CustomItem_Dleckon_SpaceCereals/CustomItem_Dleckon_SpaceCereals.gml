// Inherit ItemType to make a new item type.
function CustomItem_Dleckon_SpaceCereals() : ItemType() constructor{
	// You can override several functions to customize your item.
	
	// GetName() returns the name of the item.
	function GetName(){
		return "Space Cereals";
	}
		
	// OnUse(inventory, index) is called when the player uses the item.
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextHeal(30));
		Player_Heal(30);
		audio_play_sound(snd_item_heal, 0, 0);
		inventory.Remove(index);
			
		Dialog_Start();
	}
}
// Inherit ItemType to make a new item type.
function CustomItem_Dleckon_GhostRoboticSandwich() : ItemType() constructor{
	// You can override several functions to customize your item.
	
	// GetName() returns the name of the item.
	function GetName(){
		return "Ghost Robotic Sandwich";
	}
		
	// OnUse(inventory, index) is called when the player uses the item.
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextHeal(15));
		Player_Heal(15);
		audio_play_sound(snd_item_heal, 0, 0);
		inventory.Remove(index);
			
		Dialog_Start();
	}
}
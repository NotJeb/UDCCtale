// Inherit ItemType to make a new item type.
function CustomItem_Dleckon_Noodles() : ItemType() constructor{
	// You can override several functions to customize your item.
	
	// GetName() returns the name of the item.
	function GetName(){
		return "Noodles";
	}
		
	// OnUse(inventory, index) is called when the player uses the item.
	function OnUse(inventory,index){
		Dialog_Add(Item_GetTextHeal(Player_GetHpMax()));
		Player_Heal(Player_GetHpMax());
		audio_play_sound(snd_item_heal, 0, 0);
		inventory.Remove(index);
			
		Dialog_Start();
	}
}
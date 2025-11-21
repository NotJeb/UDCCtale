function Player_Hurt(_damage, _karma = battle.kr_enabled ? 1 : 0)
{    
    if (_damage >= 0)
    {
        var _hp = Player_GetHp(),
            _final_hp = max(_hp - _damage, 0);
        Player_SetHp(_final_hp)
        
        if (battle.kr_enabled && _karma > 0)
        {
            var _kr = battle.kr,
                _final_kr = _karma + _kr;
			battle.kr = _final_kr;
        }
    }
    else
        Player_Heal(-_damage);
}
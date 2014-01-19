//	@file Version: 1.0
//	@file Name: addWeaponInventory.sqf
//	@file Author: AgentRev
//	@file Created: 16/11/2013 19:20
//	@file Args: 

private ["_player", "_weapon", "_return"];

_player = _this select 0;
_weapon = _this select 1;
_return = true;

switch (true) do
{
	case ([_player, _weapon, "backpack"] call fn_fitsInventory): { (backpackContainer _player) addWeaponCargoGlobal [_weapon, 1] };
	case ([_player, _weapon, "vest"] call fn_fitsInventory):     { (vestContainer _player) addWeaponCargoGlobal [_weapon, 1] };
	case ([_player, _weapon, "uniform"] call fn_fitsInventory):  { (uniformContainer _player) addWeaponCargoGlobal [_weapon, 1] };
	default                                                      { _return = false };
};

_return

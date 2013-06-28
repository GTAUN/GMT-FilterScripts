/*
Copyright (C) <2013>  <GMTCN.NET>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.



Copyright (c) <2013> <GMTcn.net>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/


// This is a comment
// uncomment the line below if you want to write a filterscript

#define FILTERSCRIPT //定义为FS插件

#include 	<a_samp>


#define 	COLOR_RED 		0xAA3333AA
#define 	COLOR_GREEN 	0x33AA33AA


public OnFilterScriptInit() //
{
	print("\n----------------------------------------");
	print(" GMT God Father 2013 HUD Ver 0.1 By Yin.J");
	print("----------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

stock GetName(playerid)//读取玩家的名称
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, MAX_PLAYER_NAME);//SAMP自带函数
    return name;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
{
	new  string[35],
        nstring[30];
		
   	format(string, 35, "失去 -%f HP ", amount);
    SetPlayerChatBubble(playerid, string, COLOR_RED, 100.0, 3000);//用聊天框显示给周边玩家
    format(nstring, 30, "使 %s (%d) 损失 -%f HP!", GetName(playerid), playerid, amount);
    SetPlayerChatBubble(issuerid, nstring, COLOR_GREEN, 100.0, 3000);
    return 1;
}

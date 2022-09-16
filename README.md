```Status: WORKING```
---------
Hello im Xenijo and im the developer of this simple Utility script 


------
Loadinstring:
```
local Utility = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenijo/XenWare-Utility/main/Main.lua"))()
```

FireClick: 
```
Utility:Click(path,Mats)
```
Example Usage:
```Utility:Click(game.Workspace.Clickme,math.huge)```
-------------
FirePrompt:
```
Utility:prompt(path,Matss)
```
Example Usage:
```Utility:prompt(game.Workspace.proximitypromt,math.huge)```
--------
```
Utility:Reset()
```
Example Usage: ```if level>100 then Utility:Reset() end```
------------
```
Utility:BypassReset()
```
Example Usage: ```if level>100 then Utility:BypassReset()end --Not working at the moment```
----
```
Utility:setspeed(value)
```
Example Usage: ```setspeed(200)```
---------
```
Utility:setjump(value)
```
Example Usage: ```Utility:setjump(200)```
--------
```
Utility:IsAlive()
```
Example Usage: ```if Utility:IsAlive() then Reset()```
---------
```
Utility:GetCharacter(plr)
```
Example Usage: ```if Utility:GetCharacter(game.Players.LocalPlayer)then Reset()```
------
```
Utility:GetHumanoid(plr)
```
Example Usage: ```if Utility:GetHumanoid(game.Players.LocalPlayer.Character.HumanoidRootPart)then setspeed(200)```
--------
```
Utility:Tween(instance, duration, properties, waituntildone, optionalproperties)
```
Example Usage: ```Utility:Tween(game.Workspace.Part, 5,, true --waits until tween done before continues, Enum.EasingDirection.Out, Enum.EasingStyle.Linear)```
-----
```
Utility:MagTeleport(pos, tpspeed, who)
```
Example Usage : ```Utility:MagTeleport(game.Workspace.Part, 5--higher = faster, RootPart or game.Players.LocalPlayer.Character.HumanoidRootPart)```
-------
```
Utility:Httpspy()
```
Example Usage: ```if Mausebutton1down then Utility:Httpspy()end```
-----------
```
Utility:loopbringall(range)
```
Example Usage: ```Utility:loopbringall(0)```
----------
```
Utility:unloopbringall()
```
Example Usage: ```if not IsAlive() then Utility:unloopbringall()end ```
--------
```
Utility:test()
```
Example Usage: ```Utility:test()--Prints test```
--------
```
Utility:Music(Id,volume,looped)
```
Example Usage: ```Utility:Music(9116652038,0.5,true)```
------------

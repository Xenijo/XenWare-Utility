--//vars
local TweenService = game:getService("TweenService")
local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local lolplr =  Players.LocalPlayer
local hum = lolplr.Character.Humanoid
local localRoot = lolplr.Character:FindFirstChild("HumanoidRootPart")
local IgnoreParts = {}
getgenv().Status = nil --idk why i used that
--//Print
print("This Script was made with Xenijos Utility :D "..lolplr.Name.." Thx for using")
--//Main Version 1.6.3

local Utility = {}

function Utility:Click(path,Mats)
 fireclickdetector(path,Mats or math.huge)
end

function Utility:prompt(path,Matss)
 fireproximityprompt(path,Matss or math.huge)
end

function Utility:Reset()
hum.Health = 0
end

function Utility:BypassReset()
print("soon")
end

function Utility:setspeed(value)
hum.WalkSpeed = value
end

function Utility:setjump(value)
hum.JumpPower = value
end

function Utility:IsAlive()
if hum.Health >0 then 
    print("Player Status: Alive")
    Status = true
    return true 
else

print("Player Status: Dead")
Status = false 
end
end


--//little creds to hold
function Utility:GetCharacter(plr)
    local plr = plr or lolplr
    local plrchar = lolplr.Character or lolplr.CharacterAdded:Wait() or lolplr.CharacterAppearence.Loaded:Wait()
    return plrchar
end

function Utility:GetHumanoid(plr)
    local plr = plr or lolplr
    local Char = GetCharacter(plr)
    if Char then
        return Char:WaitForChild("Humanoid")
    end    
end

function Utility:Tween(instance, duration, properties, waituntildone, optionalproperties)
    local waituntildone = waituntildone or false
    local optionalproperties = optionalproperties or {Enum.EasingDirection.Out, Enum.EasingStyle.Linear}
    local Tween = TweenService:Create(instance, TweenInfo.new(duration), properties, unpack(optionalproperties))
    Tween:Play()
    if waituntildone == true then
        Tween.Completed:Wait()
        return true
    end
end

function Utility:MagTeleport(pos, tpspeed, who)
    local tpspeed = tpspeed or 0
    local who = who 
    local twn = TweenService:Create(who, TweenInfo.new((pos - who.Position).Magnitude / tpspeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    twn:Play()
    twn.Completed:Wait()
end

function Utility:Httpspy()
    --Creds to ou1z
    local g
    g = hookfunction(game.HttpGet,function(self,url,...)
      print("HttpGet Request Sent To: "..url)
      return g(self,url,...)
    end)
    
    local ga
    ga = hookfunction(game.HttpGetAsync,function(self,url,...)
      print("HttpGetAsync Request Sent To: "..url)
      return ga(self,url,...)
    end)
    
    local p
    p = hookfunction(game.HttpPost,function(self,url,...)
      print("HttpPost Request Sent To: "..url)
      warn("Arguments: "..(...))
      return p(self,url,...)
    end)
    
    local pa
    pa = hookfunction(game.HttpPostAsync,function(self,url,...)
      print("HttpPostAsync Request Sent To: "..url)
      warn("Arguments: "..(...))
      return pa(self,url,...)
    end)
    
    local pa
    pa = hookfunction(syn.request,function(tbl,...)
      print(string.format("%s Request Sent To: %s", tbl.Method or "GET", tbl.Url))
      return pa(tbl,...)
    end)
end

function Utility:loopbringall(range)
     _G.LoopBring = true
     local IgnoreParts = {}
      while _G.LoopBring == true do
    for i, v in pairs(Players:GetPlayers())  do
    if v.Character:FindFirstChild("HumanoidRootPart") then
    if v.Character.Humanoid.Health >0 then 
    if v.Name == lolplr.Name then 
    table.insert(IgnoreParts,v.Name)
    end
    if localRoot then
  v.Character.HumanoidRootPart.CFrame = CFrame.new(localRoot.Position) * CFrame(range or 0,0,0)
    wait(0.00001)
    end
    end
    end
    end
    end
end

function Utility:unloopbringall()
_G.LoopBring = false 
end

function Utility:test()--Test function
print("Script Status: Working")
end

function Utility:FetchScripts()
print("Soon")
end

function Utility:Music(Id,volume,looped)
  local Part = Instance.new("Sound")
  Part.Parent = SoundService
  Part.SoundId = "rbxassetid://"..Id
  Part.Looped = looped or false
  Part.Name = "Xenware-Utility"
  Part.Volume = volume or 0.5 
  Part.Playing = true 
end



function Utility:Anch()
localRoot.Anchored = true 
end

function Utility:unAnch()
  localRoot.Anchored = false 
  end

return Utility

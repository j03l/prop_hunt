include("sh_init.lua")

-- Decides where  the player view should be (forces third person for props)
function GM:CalcView(pl, origin, angles, fov)
	local view = {} 
	
	if blind then
		view.origin = Vector(20000, 0, 0)
		view.angles = Angle(0, 0, 0)
		view.fov = fov
		
		return view
	end
	
 	view.origin = origin 
 	view.angles	= angles 
 	view.fov = fov 
 	
 	-- Give the active weapon a go at changing the viewmodel position 
	if pl:Team() == TEAM_PROPS && pl:Alive() then
		view.origin = origin + Vector(0, 0, hullz - 60) + (angles:Forward() * -80)
	else
	 	local wep = pl:GetActiveWeapon() 
	 	if wep && wep != NULL then 
	 		local func = wep.GetViewModelPosition 
	 		if func then 
	 			view.vm_origin, view.vm_angles = func(wep, origin*1, angles*1) -- Note: *1 to copy the object so the child function can't edit it. 
	 		end
	 		 
	 		local func = wep.CalcView 
	 		if func then 
	 			view.origin, view.angles, view.fov = func(wep, pl, origin*1, angles*1, fov) -- Note: *1 to copy the object so the child function can't edit it. 
	 		end 
	 	end
	end
 	
 	return view 
end


-- Draw round timeleft and hunter release timeleft
function HUDPaint()
	if GetGlobalBool("InRound", false) then
		local blindlock_time_left = (HUNTER_BLINDLOCK_TIME - (CurTime() - GetGlobalFloat("RoundStartTime", 0))) + 1
		
		if blindlock_time_left < 1 && blindlock_time_left > -6 then
			blindlock_time_left_msg = "Ready or not, here we come!"
		elseif blindlock_time_left > 0 then
			blindlock_time_left_msg = "Hunters will be unblinded and released in "..string.ToMinutesSeconds(blindlock_time_left)
		else
			blindlock_time_left_msg = nil
		end
		
		if blindlock_time_left_msg then
			surface.SetFont("MyFont")
			local tw, th = surface.GetTextSize(blindlock_time_left_msg)
			
			draw.RoundedBox(8, 20, 20, tw + 20, 26, Color(0, 0, 0, 75))
			draw.DrawText(blindlock_time_left_msg, "MyFont", 31, 26, Color(255, 255, 0, 255), TEXT_ALIGN_LEFT)
		end
	end
end
hook.Add("HUDPaint", "PH_HUDPaint", HUDPaint)
-- Called immediately after starting the gamemode 
function Initialize()
	hullz = 80
	--surface.CreateFont("Arial", 14, 1200, true, false, "ph_arial")
	surface.CreateFont( "MyFont",
	{
		font	= "Arial",
		size	= 14,
		weight	= 1200,
		antialias = true,
		underline = false
	})
end
hook.Add("Initialize", "PH_Initialize", Initialize)

-- Resets the player hull
function ResetHull(um)
	if LocalPlayer() && LocalPlayer():IsValid() then
		LocalPlayer():ResetHull()
		hullz = 80
	end
end
usermessage.Hook("ResetHull", ResetHull)

-- Show hands!
function GM:PostDrawViewModel( vm, pl, weapon )
   if weapon.UseHands or (not weapon:IsScripted()) then
      local hands = LocalPlayer():GetHands()
      if IsValid(hands) then hands:DrawModel() end
   end
end

-- Sets the local blind variable to be used in CalcView
function SetBlind(um)
	blind = um:ReadBool()
end
usermessage.Hook("SetBlind", SetBlind)


-- Sets the player hull
function SetHull(um)
	hullxy = um:ReadLong()
	hullz = um:ReadLong()
	new_health = um:ReadLong()
	
	LocalPlayer():SetHull(Vector(hullxy * -1, hullxy * -1, 0), Vector(hullxy, hullxy, hullz))
	LocalPlayer():SetHullDuck(Vector(hullxy * -1, hullxy * -1, 0), Vector(hullxy, hullxy, hullz))
	LocalPlayer():SetHealth(new_health)
end
usermessage.Hook("SetHull", SetHull)

function AlertForCstrike()
	-- CSTRIKE Notify
	-- Notification panel
	NotifyPanel = vgui.Create( "DNotify" )
	NotifyPanel:SetPos( 250, 380 )
	NotifyPanel:SetSize( 220, 303 )
	surface.PlaySound("hud/cstrike_alert.wav")
	NotifyPanel:SetLife(20)

	-- Gray background panel
	local bg = vgui.Create( "DPanel", NotifyPanel )
	bg:Dock( FILL )
	bg:SetBackgroundColor( Color( 64, 64, 64 ) )

	-- Image of Dr. Kleiner ( parented to background panel )
	local img = vgui.Create( "DImage", bg )
	img:SetPos( 10, 10 )
	img:SetSize( 200, 200 )
	img:SetImage( "materials/css_alert_image.png" )

	-- A yellow label message ( parented to background panel )
	local lbl = vgui.Create( "DLabel", bg )
	lbl:SetPos( 10, 185 )
	lbl:SetSize( 200, 140 )
	lbl:SetText( "We cannot detect a legal version of Counter-Strike Source. You will see red 'Error' signs around the map. Please purchase a legal version of the game from Steam." )
	lbl:SetTextColor( Color( 255, 200, 0 ) )
	lbl:SetFont( "MyFont" )
	lbl:SetWrap(true)

	-- Add the background panel to the notification
	NotifyPanel:AddItem( bg )
end
usermessage.Hook("PlayCStrikeAlert", AlertForCstrike)


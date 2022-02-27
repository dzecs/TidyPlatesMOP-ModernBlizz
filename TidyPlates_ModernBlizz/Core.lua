
---------------------------------------------
-- Style Definition
---------------------------------------------
local ArtworkPath = "Interface\\Addons\\TidyPlates_ModernBlizz\\"
--local font = "Interface\\Addons\\TidyPlatesHub\\shared\\AccidentalPresidency.ttf"; local fontsize = 12;
local font = STANDARD_TEXT_FONT; 
local fontsize = 10;
--print(font, fontsize)
--local fontsize = 12;
local EmptyTexture = "Interface\\Addons\\TidyPlatesHub\\shared\\Empty"
local VerticalAdjustment = 12
local CastBarHorizontalAdjustment = 22
local CastBarVerticalAdjustment = VerticalAdjustment - 18
local NameTextVerticalAdjustment = VerticalAdjustment + 12

-- Non-Latin Font Bypass
local NonLatinLocales = { ["koKR"] = true, ["zhCN"] = true, ["zhTW"] = true, }
if NonLatinLocales[GetLocale()] == true then font = STANDARD_TEXT_FONT end


--   /run print(TidyPlates.ActiveThemeTable["Default"].frame.y)
---------------------------------------------
-- Default Style
---------------------------------------------
local Theme = {}
local DefaultStyle = {}

DefaultStyle.highlight = {
	texture = EmptyTexture
}

DefaultStyle.healthborder = {
	texture =					ArtworkPath.."Dark-Border",
	width = 150,
	height = 45,
	y = VerticalAdjustment,
	show = true,
}

DefaultStyle.healthbar = {
	texture =					ArtworkPath.."BlizzBar",
	backdrop =					ArtworkPath.."BlizzBG",
	width = 120,
	height = 13,
	x = 0,
	y = VerticalAdjustment,
}


DefaultStyle.castborder = {
	texture = 					EmptyTexture,
	width = 128,
	height = 32,
	x = CastBarHorizontalAdjustment,
	y = CastBarVerticalAdjustment,
	show = true,
}

DefaultStyle.castnostop = {
	texture =					EmptyTexture,
	width = 128,
	height = 32,
	x = CastBarHorizontalAdjustment,
	y = CastBarVerticalAdjustment,
	show = false,
}


DefaultStyle.castbar = {
	texture =					 ArtworkPath.."BlizzBar",
	backdrop =					 ArtworkPath.."CastBG",
	width = 119,
	height = 12,
	x = CastBarHorizontalAdjustment - 20,
	y = CastBarVerticalAdjustment + 2,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}

DefaultStyle.spellicon = {
	width = 14,
	height = 14,
	x = CastBarHorizontalAdjustment -77,
	y = CastBarVerticalAdjustment + 2,
	anchor = "CENTER",
	show = true,
	coords = {left = 0.15,right = .85,top = 0.15,bottom = .85}, 		-- Does nothing, at the moment
}

DefaultStyle.spelltext = {
	typeface = font,
	size = fontsize,
	width = 150,
	height = 11,
	x = CastBarHorizontalAdjustment - 10,
	--NameTextVerticalAdjustment +
	y = CastBarVerticalAdjustment + 2,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
	show = true,
}

--]]

DefaultStyle.threatborder = {
					EmptyTexture,
	width = 256,
	height = 64,
	y = VerticalAdjustment + 1,
	x = 0,
	show = false,
}


DefaultStyle.target = {
	texture =			 ArtworkPath .. "White-Border",
	width = 150,
	height = 40,
	x = 0,
	y = VerticalAdjustment,
	anchor = "CENTER",
	show = true,
}

DefaultStyle.raidicon = {
	width = 22,
	height = 22,
	x = -80,
	y = VerticalAdjustment,
	anchor = "CENTER",
	texture = "Interface\\TargetingFrame\\UI-RaidTargetingIcons",
	show = true,
}

-- [[
DefaultStyle.eliteicon = {
	texture	= 			EmptyTexture,
	width = 14,
	height = 14,
	x = -44,
	y = VerticalAdjustment + 5,
	anchor = "CENTER",
	show = false,
}
--]]

DefaultStyle.skullicon = {
	texture = 			EmptyTexture,
	width = 14,
	height = 14,
	x = -32,
	y = VerticalAdjustment + 5,
	anchor = "CENTER",
	show = false,
}


DefaultStyle.name = {
	typeface = font,
	size = fontsize,
	width = 200,
	height = 11,
	x = 0,
	y = NameTextVerticalAdjustment + 5,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = true,
	flags = "NONE",
}

DefaultStyle.level = {
	typeface = font,
	size = 9,
	width = 22,
	height = 11,
	x = 5,
	y = VerticalAdjustment + 5,
	align = "LEFT",
	anchor = "LEFT",
	vertical = "CENTER",
	flags = "OUTLINE",
	shadow = false,
	show = false,
}

DefaultStyle.customart = {
	width = 14,
	height = 14,
	x = -44,
	y = VerticalAdjustment + 5,
	anchor = "CENTER",
	--show = true,
}

DefaultStyle.customtext = {
	typeface = font,
	size = 11,
	width = 150,
	height = 11,
	x = 0,
	y = VerticalAdjustment,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "CENTER",
	shadow = false,
	flags = "OUTLINE",
	show = true,
}

DefaultStyle.frame = {
	y = 0,
}

local CopyTable = TidyPlatesUtility.copyTable

-- No Bar
local StyleTextOnly = CopyTable(DefaultStyle)
StyleTextOnly.threatborder.texture = EmptyTexture


StyleTextOnly.healthborder.y = VerticalAdjustment - 24
StyleTextOnly.healthborder.height = 64
StyleTextOnly.healthborder.texture = EmptyTexture
StyleTextOnly.healthbar.texture = EmptyTexture
StyleTextOnly.healthbar.backdrop = EmptyTexture
StyleTextOnly.eliteicon.texture = EmptyTexture
StyleTextOnly.customtext.size = fontsize - 2
StyleTextOnly.customtext.flags = "NONE"
StyleTextOnly.customtext.y = VerticalAdjustment-8
StyleTextOnly.name.size = fontsize
StyleTextOnly.name.y = VerticalAdjustment + 1
StyleTextOnly.level.show = false
StyleTextOnly.skullicon.show = false
StyleTextOnly.eliteicon.show = false
StyleTextOnly.highlight.texture = "Interface\\Addons\\TidyPlatesHub\\shared\\Highlight"
StyleTextOnly.target.texture = "Interface\\Addons\\TidyPlatesHub\\shared\\Target"
StyleTextOnly.target.height = 72
StyleTextOnly.target.y = VerticalAdjustment -8 -18

StyleTextOnly.raidicon.x = 0
StyleTextOnly.raidicon.y = VerticalAdjustment - 25

-- Styles
local DefaultNoAura = CopyTable(DefaultStyle)
local TextNoAura = CopyTable(StyleTextOnly)
local TextNoDescription = CopyTable(StyleTextOnly)

DefaultNoAura.raidicon = {
	width = 22,
	height = 22,
	x = 0,
	y = VerticalAdjustment + 20,
	anchor = "CENTER",
	texture = "Interface\\TargetingFrame\\UI-RaidTargetingIcons",
	show = true,
}

TextNoAura.raidicon = DefaultNoAura.raidicon

TextNoDescription.target.height = 55
TextNoDescription.target.y = VerticalAdjustment - 17
TextNoDescription.raidicon.x = 0
TextNoDescription.raidicon.y = VerticalAdjustment - 22



-- Active Styles
Theme["Default"] = DefaultStyle
Theme["NameOnly"] = StyleTextOnly

Theme["Default-NoAura"] = DefaultNoAura

Theme["NameOnly-NoAura"] = TextNoAura
Theme["NameOnly-NoDescription"] = TextNoDescription


-- Widget
local WidgetConfig = {}
WidgetConfig.ClassIcon = { anchor = "TOP" , x = 30 ,y = VerticalAdjustment -1 }
WidgetConfig.TotemIcon = { anchor = "TOP" , x = 0 ,y = VerticalAdjustment + 2 }
WidgetConfig.ThreatLineWidget = { anchor =  "CENTER", x = 0 ,y = VerticalAdjustment + 4 }
WidgetConfig.ThreatWheelWidget = { anchor =  "CENTER", x = 36 ,y = VerticalAdjustment + 12 } -- "CENTER", plate, 30, 18
WidgetConfig.ComboWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 9.5 }
WidgetConfig.RangeWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 0 }
WidgetConfig.DebuffWidget = { anchor = "CENTER" , x = 18 ,y = VerticalAdjustment + 40 }
if (UnitClassBase("player") == "Druid") or (UnitClassBase("player") == "Rogue") then
	WidgetConfig.DebuffWidgetPlus = { anchor = "CENTER" , x = 15 ,y = VerticalAdjustment + 24 }
end

local DamageThemeName = "ModernBlizz/|cFFFF4400Damage"
local TankThemeName = "ModernBlizz/|cFF3782D1Tank"

SLASH_MBTANK1 = '/mbtank'
SlashCmdList['MBTANK'] = ShowTidyPlatesHubTankPanel

SLASH_MBDPS1 = '/mbdps'
SlashCmdList['MBDPS'] = ShowTidyPlatesHubDamagePanel


---------------------------------------------
-- Tidy Plates Hub Integration
---------------------------------------------

TidyPlatesThemeList[DamageThemeName] = Theme
local LocalVars = TidyPlatesHubDamageVariables

local ApplyThemeCustomization = TidyPlatesHubFunctions.ApplyThemeCustomization

local function ApplyDamageCustomization()
	ApplyThemeCustomization(Theme)
end

local function OnInitialize(plate)
	TidyPlatesHubFunctions.OnInitializeWidgets(plate, WidgetConfig)
end

local function OnActivateTheme(themeTable, other)
		--print("ModernBlizzDamage", themeTable, other)
		if Theme == themeTable then
			LocalVars = TidyPlatesHubFunctions:UseDamageVariables()
			ApplyDamageCustomization()
		end
end

Theme.SetNameColor = TidyPlatesHubFunctions.SetNameColor
Theme.SetScale = TidyPlatesHubFunctions.SetScale
Theme.SetAlpha = TidyPlatesHubFunctions.SetAlpha
Theme.SetHealthbarColor = TidyPlatesHubFunctions.SetHealthbarColor
Theme.SetThreatColor = TidyPlatesHubFunctions.SetThreatColor
Theme.SetCastbarColor = TidyPlatesHubFunctions.SetCastbarColor
--Theme.SetCustomText = TidyPlatesHubFunctions.SetCustomText
Theme.OnUpdate = TidyPlatesHubFunctions.OnUpdate
Theme.OnContextUpdate = TidyPlatesHubFunctions.OnContextUpdate
Theme.ShowConfigPanel = ShowTidyPlatesHubDamagePanel
Theme.SetStyle = TidyPlatesHubFunctions.SetStyleBinary
--Theme.SetStyle = TidyPlatesHubFunctions.SetStyleTrinary
Theme.SetCustomText = TidyPlatesHubFunctions.SetCustomTextBinary
Theme.OnInitialize = OnInitialize		-- Need to provide widget positions
Theme.OnActivateTheme = OnActivateTheme -- called by Tidy Plates Core, Theme Loader
Theme.OnApplyThemeCustomization = ApplyDamageCustomization -- Called By Hub Panel

do
	local TankTheme = CopyTable(Theme)
	TidyPlatesThemeList[TankThemeName] = TankTheme

	local function ApplyTankCustomization()
		ApplyThemeCustomization(TankTheme)
	end

	local function OnActivateTheme(themeTable)
		--print("ModernBlizzTank", themeTable, other)
		if TankTheme == themeTable then
			LocalVars = TidyPlatesHubFunctions:UseTankVariables()
			ApplyTankCustomization()
		end
	end

	TankTheme.OnActivateTheme = OnActivateTheme -- called by Tidy Plates Core, Theme Loader
	TankTheme.OnApplyThemeCustomization = ApplyTankCustomization -- Called By Hub Panel
	TankTheme.ShowConfigPanel = ShowTidyPlatesHubTankPanel
end

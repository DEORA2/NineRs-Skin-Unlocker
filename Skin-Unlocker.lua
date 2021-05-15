--[[

Script not by me!

Sorting skins and adding new skins by me.

--]]

local LocalPlayer = game:GetService("Players").LocalPlayer
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local allSkins = {
   {'P2000_Stock'},
   {'P2000_Camo Dipped'},
   {'P2000_Candycorn'},
   {'P2000_Golden Age'},
   {'P2000_Ruby'},
   {'P2000_Apathy'},
   {'P2000_Dark Beast'},
   {'P2000_Lunar'},
   {'P2000_Pinkie'},
   {'P2000_Comet'},
   {'P2000_Silence'},
   {'USP_Stock'},
   {'USP_Crimson'},
   {'USP_Racing'},
   {'USP_Frostbite'},
   {'USP_Dizzy'},
   {'USP_Unseen'},
   {'USP_Jade Dream'},
   {'USP_Skull'},
   {'USP_Paradise'},
   {'USP_Holiday'},
   {'USP_Kraken'},
   {'USP_Nighttown'},
   {'USP_Worlds Away'},
   {'USP_Yellowbelly'},
   {'Glock_Stock'},
   {'Glock_White Sauce'},
   {'Glock_Gravestomper'},
   {'Glock_Money Maker'},
   {'Glock_Rush'},
   {'Glock_Tarnish'},
   {'Glock_Spacedust'},
   {'Glock_Wetland'},
   {'Glock_Desert Camo'},
   {'Glock_Midnight Tiger'},
   {'Glock_Day Dreamer'},
   {'Glock_Angler'},
   {'Glock_Anubis'},
   {'Glock_Underwater'},
   {'Glock_Biotrip'},
   {'Glock_RSL'},
   {'Glock_Scapter'},
   {'DualBerettas_Stock'},
   {'DualBerettas_Carbonized'},
   {'DualBerettas_Hexline'},
   {'DualBerettas_Old Fashioned'},
   {'DualBerettas_Neon web'},
   {'DualBerettas_Xmas'},
   {'DualBerettas_Floral'},
   {'DualBerettas_Dusty Manor'},
   {'P250_Stock'},
   {'P250_Solstice'},
   {'P250_Goldish'},
   {'P250_Frosted'},
   {'P250_Green Web'},
   {'P250_Shark'},
   {'P250_Amber'},
   {'P250_Bomber'},
   {'P250_Equinox'},
   {'P250_TC250'},
   {'FiveSeven_Stock'},
   {'FiveSeven_Sub Zero'},
   {'FiveSeven_Autumn Fade'},
   {'FiveSeven_Gifted'},
   {'FiveSeven_Midnight Ride'},
   {'FiveSeven_Stigma'},
   {'FiveSeven_Fluid'},
   {'FiveSeven_Mr. Anatomy'},
   {'FiveSeven_Summer'},
   {'FiveSeven_Danjo'},
   {'Tec9_Stock'},
   {'Tec9_Phol'},
   {'Tec9_Stocking Stuffer'},
   {'Tec9_Charger'},
   {'Tec9_Ironline'},
   {'Tec9_Samurai'},
   {'Tec9_Skintech'},
   {'Tec9_Gift Wrapped'},
   {'Tec9_Performer'},
   {'CZ_Stock'},
   {'CZ_Orange Web'},
   {'CZ_Festive'},
   {'CZ_Hallow'},
   {'CZ_Holidays'},
   {'CZ_Spectre'},
   {'CZ_Designed'},
   {'CZ_Lightning'},
   {'DesertEagle_Stock'},
   {'DesertEagle_Pumpkin Buster'},
   {'DesertEagle_Cool Blue'},
   {'DesertEagle_Glittery'},
   {'DesertEagle_ROLVe'},
   {'DesertEagle_Cold Truth'},
   {'DesertEagle_Heat'},
   {'DesertEagle_Honor-bound'},
   {'DesertEagle_Xmas'},
   {'DesertEagle_Grim'},
   {'DesertEagle_Survivor'},
   {'DesertEagle_Independence'},
   {'DesertEagle_Racer'},
   {'DesertEagle_Krystallos'},
   {'DesertEagle_DropX'},
   {'DesertEagle_TC'},
   {'DesertEagle_Weeb'},
   {'DesertEagle_Skin Committee'},
   {'DesertEagle_Scapter'},
   {'R8_Stock'},
   {'R8_Spades'},
   {'R8_Hunter'},
   {'R8_TG'},
   {'R8_Violet'},
   {'R8_Exquisite'},
   {'MP9_Stock'},
   {'MP9_Blueroyal'},
   {'MP9_Cob Web'},
   {'MP9_SnowTime'},
   {'MP9_Velvita'},
   {'MP9_Decked Halls'},
   {'MP9_Wilderness'},
   {'MP9_Vaporwave'},
   {'MAC10_Stock'},
   {'MAC10_Wetland'},
   {'MAC10_Turbo'},
   {'MAC10_Skeleboney'},
   {'MAC10_Artists Intent'},
   {'MAC10_Blaze'},
   {'MAC10_Golden Rings'},
   {'MP7-SD_Stock'},
   {'MP7_Stock'},
   {'MP7_Silent Ops'},
   {'MP7_Reindeer'},
   {'MP7_Trauma'},
   {'MP7_Sunshot'},
   {'MP7_Holiday'},
   {'UMP_Stock'},
   {'UMP_Gum Drop'},
   {'UMP_Militia Camo'},
   {'UMP_Death Grip'},
   {'UMP_Magma'},
   {'UMP_Redline'},
   {'UMP_Molten'},
   {'P90_Stock'},
   {'P90_Redcopy'},
   {'P90_Skulls'},
   {'P90_Argus'},
   {'P90_Elegant'},
   {'P90_Northern Lights'},
   {'P90_Pine'},
   {'P90_P-Chan'},
   {'P90_Krampus'},
   {'P90_Demon Within'},
   {'Bizon_Stock'},
   {'Bizon_Shattered'},
   {'Bizon_Festive'},
   {'Bizon_Saint Nick'},
   {'Bizon_Sergeant'},
   {'Bizon_Autumic'},
   {'Bizon_Oblivion'},
   {'Nova_Stock'},
   {'Nova_Paradise'},
   {'Nova_Starry Night'},
   {'Nova_Black Ice'},
   {'Nova_Sharkesh'},
   {'Nova_Tricked'},
   {'Nova_Terraformer'},
   {'Nova_Tiger'},
   {'Nova_Cookie'},
   {'XM_Stock'},
   {'XM_Red'},
   {'XM_Spectrum'},
   {'XM_Campfire'},
   {'XM_Atomic'},
   {'XM_Predator'},
   {'XM_Artic'},
   {'XM_Endless Night'},
   {'XM_MK11'},
   {'MAG7_Stock'},
   {'MAG7_Outbreak'},
   {'MAG7_Striped'},
   {'MAG7_C4UTION'},
   {'MAG7_Frosty'},
   {'MAG7_Bombshell'},
   {'MAG7_Molten'},
   {'SawedOff_Stock'},
   {'SawedOff_Opal'},
   {'SawedOff_Colorboom'},
   {'SawedOff_Sullys Blacklight'},
   {'SawedOff_Casino'},
   {'SawedOff_Spooky'},
   {'SawedOff_Executioner'},
   {'M249_Stock'},
   {'M249_Lantern'},
   {'M249_P2020'},
   {'M249_Wolf'},
   {'M249_Spooky'},
   {'M249_Aggressor'},
   {'Negev_Stock'},
   {'Negev_Default'},
   {'Negev_Wetland'},
   {'Negev_Midnightbones'},
   {'Negev_Quazar'},
   {'Negev_Striped'},
   {'Negev_Winterfell'},
   {'Famas_Stock'},
   {'Famas_Haunted Forest'},
   {'Famas_Goliath'},
   {'Famas_KugaX'},
   {'Famas_Medic'},
   {'Famas_Toxic Rain'},
   {'Famas_Abstract'},
   {'Famas_Imprisioned'},
   {'Famas_Redux'},
   {'Famas_Shocker'},
   {'Famas_Cogged'},
   {'Famas_Centipede'},
   {'Famas_MK11'},
   {'Galil_Stock'},
   {'Galil_Hardware'},
   {'Galil_Hardware 2'},
   {'Galil_Toxicity'},
   {'Galil_Worn'},
   {'Galil_Frosted'},
   {'M4A4_Stock'},
   {'M4A4_Mistletoe'},
   {'M4A4_Desert Camo'},
   {'M4A4_RayTrack'},
   {'M4A4_Toy Soldier'},
   {'M4A4_Ice Cap'},
   {'M4A4_Stardust'},
   {'M4A4_Pinkvision'},
   {'M4A4_Pinkie'},
   {'M4A4_Devil'},
   {'M4A4_Flashy Ride'},
   {'M4A4_Pondside'},
   {'M4A4_Candyskull'},
   {'M4A4_Precision'},
   {'M4A4_Racer'},
   {'M4A4_King'},
   {'M4A4_BOT[S]'},
   {'M4A4_Endline'},
   {'M4A4_Quicktime'},
   {'M4A4_Delinquent'},
   {'M4A4_Jester'},
   {'M4A4_Scapter'},
   {'M4A1_Stock'},
   {'M4A1_Desert Camo'},
   {'M4A1_Tecnician'},
   {'M4A1_Animatic'},
   {'M4A1_Necropolis'},
   {'M4A1_Burning'},
   {'M4A1_Impulse'},
   {'M4A1_Toucan'},
   {'M4A1_Wastelander'},
   {'M4A1_Lunar'},
   {'M4A1_Jester'},
   {'M4A1_Heavens Gate'},
   {'AK47_Stock'},
   {'AK47_Code Orange'},
   {'AK47_Maker'},
   {'AK47_Gifted'},
   {'AK47_Ugly Sweater'},
   {'AK47_Scythe'},
   {'AK47_Clown'},
   {'AK47_Ghost'},
   {'AK47_Ace'},
   {'AK47_Patch'},
   {'AK47_Eve'},
   {'AK47_Inversion'},
   {'AK47_Halo'},
   {'AK47_Shooting Star'},
   {'AK47_Quantum'},
   {'AK47_Plated'},
   {'AK47_Mean Green'},
   {'AK47_Bloodboom'},
   {'AK47_Outrunner'},
   {'AK47_Precision'},
   {'AK47_Secret Santa'},
   {'AK47_Survivor'},
   {'AK47_Yltude'},
   {'AK47_Quicktime'},
   {'AK47_Godess'},
   {'AK47_Glo'},
   {'AK47_Hypersonic'},
   {'AK47_Outlaws'},
   {'AK47_Hallows'},
   {'AK47_Variant Camo'},
   {'AK47_Jester'},
   {'AK47_Toxic Nitro'},
   {'AK47_Weeb'},
   {'AK47_Skin Committee'},
   {'AK47_VAV'},
   {'AK47_Scapter'},
   {'Scout_Stock'},
   {'Scout_Railgun'},
   {'Scout_Coffin Biter'},
   {'Scout_Hot Cocoa'},
   {'Scout_Flowing Mists'},
   {'Scout_Theory'},
   {'Scout_Posh'},
   {'Scout_Pulse'},
   {'Scout_Monstruo'},
   {'Scout_Neon Regulation'},
   {'Scout_Hellborn'},
   {'Scout_Xmas'},
   {'AUG_Stock'},
   {'AUG_Maker'},
   {'AUG_Dream Hound'},
   {'AUG_Graffiti'},
   {'AUG_Homestead'},
   {'AUG_Enlisted'},
   {'AUG_Phoenix'},
   {'AUG_Chilly Night'},
   {'AUG_Mystique'},
   {'AUG_Sunsthetic'},
   {'AUG_NightHawk'},
   {'SG_Stock'},
   {'SG_Magma'},
   {'SG_Variant Camo'},
   {'SG_Knighthood'},
   {'SG_Kitty Cat'},
   {'SG_Dummy'},
   {'SG_Yltude'},
   {'SG_Drop-Out'},
   {'SG_DropX'},
   {'AWP_Stock'},
   {'AWP_Abaddon'},
   {'AWP_Coffin Biter'},
   {'AWP_Desert Camo'},
   {'AWP_Autumness'},
   {'AWP_Northern Lights'},
   {'AWP_Forever'},
   {'AWP_Pear Tree'},
   {'AWP_Lunar'},
   {'AWP_Venomus'},
   {'AWP_Darkness'},
   {'AWP_Pink Vision'},
   {'AWP_Bloodborne'},
   {'AWP_Instinct'},
   {'AWP_Dark Galaxy'},
   {'AWP_Regina'},
   {'AWP_Retroactive'},
   {'AWP_Dragon'},
   {'AWP_Grepkin'},
   {'AWP_Illusion'},
   {'AWP_Hika'},
   {'AWP_Difference'},
   {'AWP_Racer'},
   {'AWP_Pinkie'},
   {'AWP_Silence'},
   {'AWP_Kumanjayi'},
   {'AWP_Blastech'},
   {'AWP_JTF2'},
   {'AWP_Weeb'},
   {'AWP_Quicktime'},
   {'AWP_Toxic Nitro'},
   {'AWP_Nerf'},
   {'AWP_Scapter'},
   {'AWP_Blue'},
   {'G3SG1_Stock'},
   {'G3SG1_Autumn'},
   {'G3SG1_Foliage'},
   {'G3SG1_Amethyst'},
   {'G3SG1_Hex'},
   {'G3SG1_Holly Bound'},
   {'G3SG1_Mahogany'},
   {'CTGlove_Stock'},
   {'TGlove_Stock'},
   {'Fingerless Glove_Digital'},
   {'Fingerless Glove_Patch'},
   {'Fingerless Glove_Crystal'},
   {'Fingerless Glove_Scapter'},
   {'Strapped Glove_Wisk'},
   {'Strapped Glove_Molten'},
   {'Strapped Glove_Grim'},
   {'Strapped Glove_Kringle'},
   {'Strapped Glove_Drop-Out'},
   {'Strapped Glove_Racer'},
   {'Sports Glove_Hallows'},
   {'Sports Glove_Weeb'},
   {'Sports Glove_Pumpkin'},
   {'Sports Glove_Skulls'},
   {'Sports Glove_RSL'},
   {'Sports Glove_CottonTail'},
   {'Sports Glove_Royal'},
   {'Sports Glove_Majesty'},
   {'Sports Glove_Hazard'},
   {'Handwraps_Guts'},
   {'Handwraps_Wetland'},
   {'Handwraps_Mummy'},
   {'Handwraps_MMA'},
   {'Handwraps_Toxic Nitro'},
   {'Handwraps_Ghoul Hex'},
   {'Handwraps_Phantom Hex'},
   {'Handwraps_Spector Hex'},
   {'Handwraps_Orange Hex'},
   {'Handwraps_Purple Hex'},
   {'Handwraps_Green Hex'},
   {'Handwraps_Wraps'},
   {'Handwraps_ARMS REMOVER'},
   {'Karambit_Consumed'},
   {'Karambit_Goo'},
   {'Karambit_Ciro'},
   {'Karambit_Hallows'},
   {'Karambit_Jester'},
   {'Karambit_Quicktime'},
   {'Karambit_Pizza'},
   {'Karambit_Peppermint'},
   {'Karambit_Racer'},
   {'Karambit_Ruby'},
   {'Karambit_Bloodwidow'},
   {'Karambit_Stock'},
   {'Karambit_Marbleized'},
   {'Karambit_Wetland'},
   {'Karambit_Naval'},
   {'Karambit_Drop-Out'},
   {'Karambit_Frozen Dream'},
   {'Karambit_Crippled Fade'},
   {'Karambit_Jade Dream'},
   {'Karambit_Splattered'},
   {'Karambit_Worn'},
   {'Karambit_Liberty Camo'},
   {'Karambit_Neonic'},
   {'Karambit_Glossed'},
   {'Karambit_Cosmos'},
   {'Karambit_Twitch'},
   {'Karambit_Crimson Tiger'},
   {'Karambit_Lantern'},
   {'Karambit_Topaz'},
   {'Karambit_Tropical'},
   {'Karambit_Festive'},
   {'Karambit_Egg Shell'},
   {'Karambit_Gold'},
   {'Karambit_Death Wish'},
   {'Karambit_Ghost'},
   {'Karambit_Digital'},
   {'Karambit_Scapter'},
   {'Butterfly Knife_Wetland'},
   {'Butterfly Knife_Marbleized'},
   {'Butterfly Knife_Goo'},
   {'Butterfly Knife_Argus'},
   {'Butterfly Knife_Jade Dream'},
   {'Butterfly Knife_Crippled Fade'},
   {'Butterfly Knife_Hallows'},
   {'Butterfly Knife_Consumed'},
   {'Butterfly Knife_Ruby'},
   {'Butterfly Knife_Bloodwidow'},
   {'Butterfly Knife_White Boss'},
   {'Butterfly Knife_Stock'},
   {'Butterfly Knife_Snowfall'},
   {'Butterfly Knife_Frozen Dream'},
   {'Butterfly Knife_Naval'},
   {'Butterfly Knife_Wrapped'},
   {'Butterfly Knife_Neonic'},
   {'Butterfly Knife_Icicle'},
   {'Butterfly Knife_Cosmos'},
   {'Butterfly Knife_Twitch'},
   {'Butterfly Knife_Freedom'},
   {'Butterfly Knife_Worn'},
   {'Butterfly Knife_Crimson Tiger'},
   {'Butterfly Knife_Aurora'},
   {'Butterfly Knife_Egg Shell'},
   {'Butterfly Knife_Scapter'},
   {'Butterfly Knife_Reaper'},
   {'Butterfly Knife_Tropical'},
   {'Butterfly Knife_Topaz'},
   {'Butterfly Knife_Inversion'},
   {'Butterfly Knife_Splattered'},
   {'Butterfly Knife_Digital'},
   {'Falchion Knife_Stock'},
   {'Falchion Knife_Goo'},
   {'Falchion Knife_Wetland'},
   {'Falchion Knife_Marbleized'},
   {'Falchion Knife_Naval'},
   {'Falchion Knife_Frozen Dream'},
   {'Falchion Knife_Chosen'},
   {'Falchion Knife_Inversion'},
   {'Falchion Knife_Bloodwidow'},
   {'Falchion Knife_Hallows'},
   {'Falchion Knife_Pumpkin'},
   {'Falchion Knife_Cocoa'},
   {'Falchion Knife_Crippled Fade'},
   {'Falchion Knife_Ruby'},
   {'Falchion Knife_Consumed'},
   {'Falchion Knife_Racer'},
   {'Falchion Knife_Toxic Nitro'},
   {'Falchion Knife_Cosmos'},
   {'Falchion Knife_Late Night'},
   {'Falchion Knife_Coal'},
   {'Falchion Knife_Neonic'},
   {'Falchion Knife_Wrapped'},
   {'Falchion Knife_Freedom'},
   {'Falchion Knife_Worn'},
   {'Falchion Knife_Crimson Tiger'},
   {'Falchion Knife_Festive'},
   {'Falchion Knife_Egg Shell'},
   {'Falchion Knife_Topaz'},
   {'Falchion Knife_Tropical'},
   {'Falchion Knife_Zombie'},
   {'Falchion Knife_Splattered'},
   {'Falchion Knife_Digital'},
   {'Bayonet_Aequalis'},
   {'Bayonet_Goo'},
   {'Bayonet_UFO'},
   {'Bayonet_Delinquent'},
   {'Bayonet_Hallows'},
   {'Bayonet_Racer'},
   {'Bayonet_Mariposa'},
   {'Bayonet_Ghastly'},
   {'Bayonet_Intertwine'},
   {'Bayonet_Decor'},
   {'Bayonet_Geo Blade'},
   {'Bayonet_Frozen Dream'},
   {'Bayonet_Consumed'},
   {'Bayonet_Marbleized'},
   {'Bayonet_Wetland'},
   {'Bayonet_Naval'},
   {'Bayonet_Stock'},
   {'Bayonet_Banner'},
   {'Bayonet_Neonic'},
   {'Bayonet_Cosmos'},
   {'Bayonet_Sapphire'},
   {'Bayonet_Twitch'},
   {'Bayonet_Egg Shell'},
   {'Bayonet_Silent Night'},
   {'Bayonet_Tropical'},
   {'Bayonet_Splattered'},
   {'Bayonet_Crow'},
   {'Bayonet_Topaz'},
   {'Bayonet_Wrapped'},
   {'Bayonet_Festive'},
   {'Bayonet_RSL'},
   {'Bayonet_Crimson Tiger'},
   {'Bayonet_Worn'},
   {'Bayonet_Digital'},
   {'Bayonet_Easy-Bake'},
   {'Bayonet_Candy Cane'},
   {'Bayonet_Ciro'},
   {'Huntsman Knife_Stock'},
   {'Huntsman Knife_Ciro'},
   {'Huntsman Knife_Goo'},
   {'Huntsman Knife_Hallows'},
   {'Huntsman Knife_Marbleized'},
   {'Huntsman Knife_Wetland'},
   {'Huntsman Knife_Geo Blade'},
   {'Huntsman Knife_Naval'},
   {'Huntsman Knife_Frozen Dream'},
   {'Huntsman Knife_Drop-Out'},
   {'Huntsman Knife_Spirit'},
   {'Huntsman Knife_Consumed'},
   {'Huntsman Knife_Bloodwidow'},
   {'Huntsman Knife_Ruby'},
   {'Huntsman Knife_Crippled Fade'},
   {'Huntsman Knife_Cozy'},
   {'Huntsman Knife_Cosmos'},
   {'Huntsman Knife_Crimson Tiger'},
   {'Huntsman Knife_Worn'},
   {'Huntsman Knife_Splattered'},
   {'Huntsman Knife_Twitch'},
   {'Huntsman Knife_Egg Shell'},
   {'Huntsman Knife_Monster'},
   {'Huntsman Knife_Tropical'},
   {'Huntsman Knife_Honor Fade'},
   {'Huntsman Knife_Aurora'},
   {'Huntsman Knife_Wrapped'},
   {'Huntsman Knife_Digital'},
   {'Huntsman Knife_Glossed'},
   {'Gut Knife_Stock'},
   {'Gut Knife_Splattered'},
   {'Gut Knife_Rusty'},
   {'Gut Knife_Frozen Dream'},
   {'Gut Knife_Naval'},
   {'Gut Knife_Geo Blade'},
   {'Gut Knife_Marbleized'},
   {'Gut Knife_Wetland'},
   {'Gut Knife_Goo'},
   {'Gut Knife_Hallows'},
   {'Gut Knife_Consumed'},
   {'Gut Knife_Bloodwidow'},
   {'Gut Knife_Ruby'},
   {'Gut Knife_Holly'},
   {'Gut Knife_Crippled Fade'},
   {'Gut Knife_Egg Shell'},
   {'Gut Knife_Lurker'},
   {'Gut Knife_Tropical'},
   {'Gut Knife_Topaz'},
   {'Gut Knife_Neonic'},
   {'Gut Knife_Present'},
   {'Gut Knife_Banner'},
   {'Gut Knife_Cosmos'},
   {'Gut Knife_Worn'},
   {'Gut Knife_Crimson Tiger'},
   {'Gut Knife_Wrapped'},
   {'Gut Knife_Digital'},
   {'CTKnife_Stock'},
   {'TKnife_Stock'},
   {'Bearded Axe_Stock'},
   {'Bearded Axe_Splattered'},
   {'Bearded Axe_Beast'},
   {'Sickle_Stock'},
   {'Sickle_Splattered'},
   {'Sickle_Mummy'},
   {'Cleaver_Stock'},
   {'Cleaver_Splattered'},
   {'Cleaver_Spider'}
}

local isUnlocked

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

local isUnlocked

mt.__namecall = newcclosure(function(self, ...)
   local args = {...}
   if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
    return
   end
   if getnamecallmethod() == "FireServer" then
    if args[1] == LocalPlayer.UserId then
        return
    end
    if string.len(tostring(self)) == 38 then
        if not isUnlocked then
         isUnlocked = true
         for i,v in pairs(allSkins) do
          local doSkip
          for i2,v2 in pairs(args[1]) do
              if v[1] == v2[1] then
               doSkip = true
              end
          end
          if not doSkip then
              table.insert(args[1], v)
          end
         end
        end
        return
    end
    if tostring(self) == "DataEvent" and args[1][4] then
        local currentSkin = string.split(args[1][4][1], "_")[2]
        if args[1][2] == "Both" then
         LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
         LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
        else
         LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin --NineR
        end
    end
   end
   return oldNamecall(self, ...)
end)
   
setreadonly(mt, true)

Client.CurrentInventory = allSkins

local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
LocalPlayer.SkinFolder.TFolder:Destroy()
LocalPlayer.SkinFolder.CTFolder:Destroy()
TClone.Parent = LocalPlayer.SkinFolder
CTClone.Parent = LocalPlayer.SkinFolder

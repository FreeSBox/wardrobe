<<<<<<< HEAD
--- Called after a player changes their playermodel via Wardrobe
-- @name PostPlayerChangeWardrobeModel
-- @class hook
-- @client
-- @param Player ply Player that changed their wardrobe model
-- @param string wspath Model path of new model
-- @param string wsid Workshop ID of new model
-- @param table hands New model's viewmodel hands
SF.hookAdd("Wardrobe_PostSetModel")
--- Called before a player changes their playermodel via Wardrobe
-- @name PlayerChangeWardrobeModel
-- @class hook
-- @client
-- @param Player ply Player that changed their wardrobe model
-- @param string wspath Model path of new model
-- @param string wsid Workshop ID of new model
-- @param table hands New model's viewmodel hands 
SF.hookAdd("Wardrobe_PreSetModel")
=======
>>>>>>> 8c4e1cf838de0511f1c8350daa25ff2695ed865d
return function(instance)
    -- https://github.com/FreeSBox/freesbox/blob/fded92bb4f4bd323a294286d4a2c9c359cced0fe/lua/starfall/libs_sh/fsb.lua#L31
    local player_methods, player_meta = instance.Types.Player.Methods, instance.Types.Player
    local function getply(self)
        local ent = player_meta.sf2sensitive[self]
        if IsValid(ent) then
            return ent
        else
            SF.Throw("Entity is not valid.", 3)
        end
    end
    --- Gets the player's model Workshop ID from Wardrobe.
    -- @client
    -- @return number Workshop ID. nil if the player doesn't have a workshop model
<<<<<<< HEAD
    function player_methods:getWorkshopID()
=======
    function player_methods:getWardrobeID()
>>>>>>> 8c4e1cf838de0511f1c8350daa25ff2695ed865d
        return getply(self).wardrobeWsid
    end
    --- Gets the player's model path from Wardrobe.
    -- @client
    -- @return string Model path. nil if the player doesn't have a workshop model
<<<<<<< HEAD
    function player_methods:getWorkshopModelPath()
=======
    function player_methods:getWardrobeModel()
>>>>>>> 8c4e1cf838de0511f1c8350daa25ff2695ed865d
        return getply(self).wardrobe
    end
end

-- TODO LIST
-- Manage turns
-- Start GAME
-- Detect players
-- IsInsideBoard change to compare to all boards
-- QUICK FIND :
-- * COMPARATION FUNCTIONS
POSITION_OFFSET = 0.015
ROTATION_OFFSET = 0.5
HORIZONTAL = 'horizontal'
VERTICAL = 'vertical'
FOREST = 'forest'
CAVE = 'cave'
CAVERN, TUNNEL, MEADOW, FIELD, PASTURE, RUBY_MINE = 'Cavern', 'Tunnel', 'Meadow', 'Field', 'Pasture', 'RubyMine'
TUNNEL_CAVERN, CAVERN_CAVERN, MEADOW_FIELD, LARGEPASTURE, PASTURE_FIELD, DEEPTUNNEL_OREMINE = 'Tunnel/Cavern', 'Cavern/Cavern', 'Meadow/Field', 
                                                                                                'LargePasture', 'Pasture/Field', 'DeepTunnel/OreMine'
SINGLE_TILES = {CAVERN, TUNNEL, MEADOW, FIELD, PASTURE, RUBY_MINE}                                                                                                
TWIN_TILES = {TUNNEL_CAVERN, CAVERN_CAVERN, MEADOW_FIELD, LARGEPASTURE, PASTURE_FIELD, DEEPTUNNEL_OREMINE}
FOREST_TILES = {MEADOW_FIELD, LARGEPASTURE, PASTURE_FIELD, MEADOW, FIELD, PASTURE}
CAVE_TILES = {TUNNEL_CAVERN, CAVERN_CAVERN, DEEPTUNNEL_OREMINE, CAVERN, TUNNEL, RUBY_MINE}
FOREST_UPGRADE_TILES = {LARGEPASTURE, PASTURE_FIELD, PASTURE}
CAVE_UPGRADE_TILES = {DEEPTUNNEL_OREMINE, RUBY_MINE}
UPGRADE_FROM = { {LARGEPASTURE, MEADOW}, {PASTURE, MEADOW}, {DEEPTUNNEL_OREMINE, TUNNEL}, {RUBY_MINE, TUNNEL}, {RUBY_MINE, 'DeepTunnel'}}
-- Relative distance from the center to each side of the game board
GAME_BOARD_BORDERS = {left = 9.105, top = -6.445, right = -9.233, bottom = 6.5}
-- Distance between the center of the board to the snap points
FOREST_BOARD_HORIZONTAL_RELATIVE_POSITION = {{x=5.862,z=-4.423}, {x=3.067,z=-4.447}, {x=5.929,z=-1.739}, {x=3.239, z=-1.761},
                                             {x=5.925,z=0.867}, {x=3.23,z=0.904}, {x=5.911,z=3.506}, {x=3.324,z=3.493}}
FOREST_BOARD_VERTICAL_RELATIVE_POSITION = {{x=7.240,z=-2.954}, {x=4.532,z=-3.016}, {x=1.941,z=-3.059}, {x=7.174,z=-0.375},
                                           {x=4.583,z=-0.366}, {x=1.959,z=-0.37}, {x=7.19,z=2.227}, {x=4.579,z=2.166}, {x=2.022, z=2.192}}
FOREST_BOARD_SINGLE_TILE_RELATIVE_POSITION = {{x=7.271,z=-4.385}, {x=4.546,z=-4.371}, {x=1.961,z=-4.473}, {x=7.193,z=-1.717}, {x=4.56,z=-1.737},
                                              {x=1.982,z=-1.788}, {x=7.227,z=0.86}, {x=4.593,z=0.901}, {x=1.978,z=0.893}, {x=7.213,z=3.447},
                                              {x=4.589,z=3.459}, {x=2.014,z=3.484}}
CAVE_BOARD_HORIZONTAL_RELATIVE_POSITION = {{x=-3.258,z=-4.319}, {x=-5.921,z=-4.315}, {x=-3.281,z=-1.566}, {x=-5.886,z=-1.595},
                                           {x=-5.774,z=0.931}, {x=-5.856,z=3.555}}
CAVE_BOARD_VERTICAL_RELATIVE_POSITION = {{x=-1.985,z=-3.103}, {x=-4.638,z=-3.015}, {x=-7.199,z=-2.951}, {x=-4.596,z=-0.5}, {x=-7.157,z=-0.458},
                                         {x=-4.531, z=2.129}, {x=-7.069,z=2.193}}
CAVE_BOARD_SINGLE_TILE_RELATIVE_POSITION = {{x=-1.986,z=-4.313}, {x=-4.593,z=-4.208}, {x=-7.169,z=-4.229}, {x=-1.994,z=-1.624}, {x=-4.579,z=-1.628},
                                            {x=-7.11,z=-1.658}, {x=-4.557,z=0.97}, {x=-7.159,z=0.915}, {x=-4.5,z=3.573}, {x=-7.083,z=3.559}}
-- Spaces in board a snap point covers when a tile is placed
FOREST_SNAP_TO_GRID_HORIZONTAL = {{1,2}, {2,3}, {4,5}, {5,6}, {7,8}, {8,9}, {10,11}, {11,12}}
FOREST_SNAP_TO_GRID_VERTICAL = {{1,4}, {2,5}, {3,6}, {4,7}, {5,8}, {6,9}, {7,10}, {8,11}, {9,12}}
FOREST_SNAP_TO_GRID_SINGLE = {{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}}
CAVE_SNAP_TO_GRID_HORIZONTAL = {{1,2}, {2,3}, {4,5}, {5,6}, {8,9}, {11,12}}
CAVE_SNAP_TO_GRID_VERTICAL = {{1,4}, {2,5}, {3,6}, {5,8}, {6,9}, {8,11}, {9,12}}
CAVE_SNAP_TO_GRID_SINGLE = {{1},{2},{3},{4},{5},{6},{8},{9},{11},{12}}

PLAYER_BOARDS = {
    Purple = { x = -26.395, z = -32.759, guid = '8b486e'}, 
    Blue   = { x = 4.495, z = -32.832, guid = '306d5c'}, 
    White  = { x = 4.495, z = -32.832, guid = '306d5c'}, 
    Green  = { x = 34.306, z = -32.754, guid = 'fd78e6'},
    Yellow = { x = 53.557, z = -0.415, guid = 'd2f832'}, 
    Orange = { x = 34.367, z = 32.867, guid = 'c20b55'},
    Red    = { x = 3.429, z = 32.821, guid = '764e13'}, 
    Pink   = { x = -26.329, z = 32.954, guid = '0e4628'}
}
FOREST_BOARDS = {
    Purple  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Blue    = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    White   = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Green   = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Yellow  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Orange  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Red     = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'},
    Pink    = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty'}
}
CAVE_BOARDS = {
    Purple  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Blue    = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    White   = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Green   = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Yellow  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Orange  = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Red     = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'},
    Pink    = {'empty', 'empty', 'empty', 'empty', 'empty', 'empty', CAVERN, 'empty', 'empty', 'entry', 'empty', 'empty'}
}

active_tile = nil
active_tile_GUID = nil
active_player = 'White'

function onLoad()
    player_colors = getSeatedPlayers()
end

function callbackTest(object_taken)
    active_tile_GUID = object_taken.getGUID()
    active_tile = getObjectFromGUID(object_taken.getGUID())
end

function onObjectPickedUp(color, object_picked)    
    object_picked.removeButton(0)    
end

function onObjectDropped(player_color, object_dropped)
    flipTile(object_dropped)
    local player_board = getObjectFromGUID(PLAYER_BOARDS[player_color].guid)
    local params = {object = object_dropped, board = player_board}
    local set_tile_id = 'set_tile' .. math.random()
    local place_id = 'drop_timer' .. math.random()
    if isInsideBoard(object_dropped, player_board) then 
        if isForestTile(object_dropped) and isOnForestSide(object_dropped, player_board) then            
            Timer.create({identifier=set_tile_id, function_name='setTileValues', function_owner=Global, 
                parameters={tile=object_dropped, tile_type=FOREST, player=player_color, params=params}, delay=0.5})            
        elseif isCaveTile(object_dropped) and isOnCaveSide(object_dropped, player_board) then                        
            Timer.create({identifier=set_tile_id, function_name='setTileValues', function_owner=Global, 
                parameters={tile=object_dropped, tile_type=CAVE, player=player_color, params=params}, delay=0.5})            
        else            
            printToAll(ALERT_MESSAGE[1], {0.86,0.07,0.23})
        end
    end
end

function placeTile(params)
    local board = params.board
    local tile = params.object
    local board_position = {x = board.getPosition().x, z = board.getPosition().z}
    local board_snaps = getRelativeBoardSnap(tile, tile.getVar('tile_type'))
    local snap_position = getSnapPosition(tile, board_position, board_snaps)

    if snap_position ~= 0 and isValidPosition(tile) then
        printToAll('Correct tile on position ' .. snap_position, {0.86,0.07,0.23})
        createConfirmButton(tile)
    else
        printToAll(ALERT_MESSAGE[1], {0.86,0.07,0.23})
    end
end

function createConfirmButton(tile)
    local rotation_y = tile.getVar('rotation_y')    
    local pos = {x=0,y=3,z=2.1}
    local rot = {x=0,y=0,z=0}
    local w = 400
    local h = 300    
    if compareOffset(rotation_y, 270, ROTATION_OFFSET) then
        pos.x = 1.3
        pos.z = 0
        rot.y = 270
        w = 850
        h = 150        
    elseif compareOffset(rotation_y, 360, ROTATION_OFFSET) or compareOffset(rotation_y, 0, ROTATION_OFFSET) then
        pos.z = -2.1
        rot.y = 180
    elseif compareOffset(rotation_y, 90, ROTATION_OFFSET) then
        pos.x = -1.3
        pos.z = 0
        rot.y = 90
        w = 850
        h = 150
    end
    local parameters = {click_function = 'confirmTile', function_owner = nil, label = 'Confirm', 
                        position = {pos.x,pos.y,pos.z}, rotation = {rot.x,rot.y,rot.z}, width = w, height = h, font_size=110}
    tile.createButton(parameters)
end

function confirmTile(tile)    
    tile.setLock(true)
    tile.removeButton(0)
    addToGrid(tile)
end

function addToGrid(tile)
    local grid_positions = getGridPositions(tile)
    local faces = getFaces(tile)
    local board = getBoard(tile)

    if tile.getVar('single') then
        board[grid_positions] = faces[1]
    elseif tile.getName() == LARGEPASTURE then        
        board[grid_positions[1]] = LARGEPASTURE
        board[grid_positions[2]] = LARGEPASTURE
    else        
        for k,v in ipairs(grid_positions) do
            board[v] = faces[k]
        end
    end
    
    for k,v in ipairs(board) do        
        printToAll(v, {0.86,0.07,0.23})
    end
end

function isValidPosition(tile)
    local grid_positions = getGridPositions(tile)
    local board = getBoard(tile)
    local result = false
    local is_forest = isForestTile(tile)    
    
    if grid_positions == nil then 
        return false
    end
    
    if isUpgradeTile(tile) then        
        return checkUpgrade(tile) 
    end
    
    for k,v in ipairs(grid_positions) do
        if ( (v%3 ~= 0 and board[v+1]~='empty') or (board[v-1]~='empty' and board[v-1]~=nil) or 
        (board[v+3]~='empty' and board[v+3]~=nil) or (board[12]=='empty' and v==12 and is_forest) ) and 
        board[v]=='empty' then
            result = true
        elseif board[v]~= 'empty' then
            result = false
            break
        end
    end

    return result
end

function checkUpgrade(tile, grid_positions, board)
    local name = tile.getName()    
    local upgrade_tiles = {}
    local grid_positions = getGridPositions(tile)
    local board = getBoard(tile)
    local comparison = {}
    local result = true    

    if isForestTile(tile) then 
        upgrade_tiles = FOREST_UPGRADE_TILES 
    else 
        upgrade_tiles = CAVE_UPGRADE_TILES 
    end

    for k,v in ipairs(grid_positions) do
        for _,i in ipairs(UPGRADE_FROM) do            
            if i[1] == name and i[2] == board[v] then                
                comparison[k] = true
                break
            else
                comparison[k] = false
            end
        end
    end

    for k,v in pairs(comparison) do
        result = result and v
    end

    return result
end

function flipTile(tile)
    if compareOffset(tile.getRotation().z, 180, ROTATION_OFFSET) then
        tile.flip()
    end
end
-- *********************
-- GET FUNCTIONS
-- *********************
function getTileOrientation(tile)
    local result = ''
    local rotation_y = tile.getVar('rotation_y')

    if compareOffset(rotation_y, 0, ROTATION_OFFSET) or compareOffset(rotation_y, 360, ROTATION_OFFSET) or 
    compareOffset(rotation_y, 180, ROTATION_OFFSET) then
        result = HORIZONTAL        
    elseif compareOffset(rotation_y, 90, ROTATION_OFFSET) or compareOffset(rotation_y, 270, ROTATION_OFFSET) then            
        result = VERTICAL
    else
        result = ''
    end

    return result
end

function getSnapPosition(tile, board_position, board_snaps)
    local board_x = board_position.x
    local board_z = board_position.z
    local relative_x = board_x - tile.getVar('pos_x')
    local relative_z = board_z - tile.getVar('pos_z')    

    for k,v in ipairs(board_snaps) do
        if compareOffset(relative_x, v.x, POSITION_OFFSET) and
        compareOffset(relative_z, v.z, POSITION_OFFSET) then            
            tile.setVar('snap', k)
            return k
        end
    end

    return 0
end

function getRelativeBoardSnap(tile)
    local result = {}
    local orientation = tile.getVar('orientation')
    local tile_type = tile.getVar('tile_type')    

    if tile.getVar('single') and (orientation == HORIZONTAL or orientation == VERTICAL) then
        if tile_type == FOREST then
            result = FOREST_BOARD_SINGLE_TILE_RELATIVE_POSITION
        elseif tile_type == CAVE then
            result = CAVE_BOARD_SINGLE_TILE_RELATIVE_POSITION
        end
    elseif orientation == HORIZONTAL then        
        if tile_type == FOREST then            
            result = FOREST_BOARD_HORIZONTAL_RELATIVE_POSITION            
        elseif tile_type == CAVE then
            result = CAVE_BOARD_HORIZONTAL_RELATIVE_POSITION
        end
    elseif orientation == VERTICAL then
        if tile_type == FOREST then
            result = FOREST_BOARD_VERTICAL_RELATIVE_POSITION
        elseif tile_type == CAVE then
            result = CAVE_BOARD_VERTICAL_RELATIVE_POSITION
        end
    end

    return result
end

function getGridPositions(tile)
    local result = {}
    local orientation = tile.getVar('orientation')
    if isForestTile(tile) then
        if tile.getVar('single') then
            result = FOREST_SNAP_TO_GRID_SINGLE
        elseif orientation == HORIZONTAL then
            result = FOREST_SNAP_TO_GRID_HORIZONTAL
        else            
            result = FOREST_SNAP_TO_GRID_VERTICAL
        end
    else
        if tile.getVar('single') then
            result = CAVE_SNAP_TO_GRID_SINGLE
        elseif orientation == HORIZONTAL then
            result = CAVE_SNAP_TO_GRID_HORIZONTAL
        else
            result = CAVE_SNAP_TO_GRID_VERTICAL
        end
    end

    return result[tile.getVar('snap')]
end

function getFaces(tile)
    local faces = {}
    local aux = {}
    local name = tile.getName()
    local rotation = tile.getRotation().y
    if tile.getVar('single') then
        for _,v in ipairs(SINGLE_TILES) do
            if name == v then
                faces = {v}
            end
        end
    else
        for _,v in ipairs(TWIN_TILES) do
            if name == v then
                for i in string.gmatch(name, "%a+") do
                    table.insert(aux, i)                    
                end

                if compareOffset(rotation, 360, ROTATION_OFFSET) or compareOffset(rotation, 0, ROTATION_OFFSET) or
                compareOffset(rotation, 90, ROTATION_OFFSET) then                    
                    faces = {aux[2],aux[1]}
                else
                    faces = aux
                end

                break
            end
        end
    end

    return faces
end

function getBoard(tile)
    local player = tile.getVar('player')
    local board = {}

    if isForestTile(tile) then
        board = FOREST_BOARDS[player]
    else
        board = CAVE_BOARDS[player]
    end
    return board
end

-- *********************
-- SET FUNCTIONS
-- *********************
function setTileValues(params)    
    local tile = params.tile    
    tile.setVar('tile_type', params.tile_type)
    tile.setVar('pos_x', tile.getPosition().x)
    tile.setVar('pos_z', tile.getPosition().z)
    tile.setVar('rotation_x', tile.getRotation().x)
    tile.setVar('rotation_y', tile.getRotation().y)
    tile.setVar('rotation_z', tile.getRotation().z)
    tile.setVar('orientation', getTileOrientation(tile))
    tile.setVar('single', isSingleTile(tile))
    tile.setVar('player', params.player)
    placeTile(params.params)
end

-- *********************
-- COMPARATION FUNCTIONS
-- *********************
function isForestTile(tile)
    local name = tile.getName()    
    for _,v in ipairs(FOREST_TILES) do        
        if name == v then            
            return true
        end
    end
    return false
end

function isCaveTile(tile)
    local name = tile.getName()
    for _,v in ipairs(CAVE_TILES) do
        if name == v then            
            return true
        end
    end
    return false
end

function isOnForestSide(object,board)
    local object_x = object.getPosition().x
    local board_x  = board.getPosition().x    
    return object_x < board_x
end

function isOnCaveSide(object,board)
    local object_x = object.getPosition().x
    local board_x  = board.getPosition().x
    return object_x > board_x
end

function isSingleTile(tile)
    local tile_name = tile.getName()
    for _,v in ipairs(SINGLE_TILES) do        
        if v == tile_name then
            return true
        end
    end
    return false
end

function isUpgradeTile(tile)
    local name = tile.getName()
    local result = false
    local upgrade_tiles = {}

    if isForestTile(tile) then
        upgrade_tiles = FOREST_UPGRADE_TILES
    else
        upgrade_tiles = CAVE_UPGRADE_TILES
    end
    
    for k,v in ipairs(upgrade_tiles) do
        if v == name then
            result = true
            break
        end
    end

    return result 
end

function isInsideBoard(object, board)
    local board_position = {x=board.getPosition().x, z=board.getPosition().z}
    local tile_position = object.getPosition()
    local tile_x = tile_position.x
    local tile_z = tile_position.z
    local board_x = board_position.x
    local board_z = board_position.z
    local relative_x = board_x - tile_x
    local relative_z = board_z - tile_z

    return relative_x <= GAME_BOARD_BORDERS.left and relative_x >= GAME_BOARD_BORDERS.right and 
    relative_z <= GAME_BOARD_BORDERS.bottom and relative_z >= GAME_BOARD_BORDERS.top      
end

function compareOffset(value, target, offset)
    return value <= target + offset and value >= target - offset
end

function printRotation(object)
    --print("x: " .. string.format('%.3f', object.getRotation().x))
    --print("y: " .. string.format('%.3f', object.getRotation().y))
    --print("z: " .. string.format('%.3f', object.getRotation().z))
end

ALERT_MESSAGE = {
    'Place the tile on a valid location'
}
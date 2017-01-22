test_object_GUID = ''

function onLoad()
    self.createButton(button_parameters('onePlayer', 3.4))
    self.createButton(button_parameters('twoPlayers', 1.6))
    self.createButton(button_parameters('threePlayers', -0.2))
    self.createButton(button_parameters('fourPlayers', -1.7))
    self.createButton(button_parameters('fivePlayers', -3.2))
    self.createButton(button_parameters('sixPlayers', -4.8))
    self.createButton(button_parameters('sevenPlayers', -6.3))

    self.createButton({
        click_function='startGame', function_owner=self, position={0,0.1,-8},
        rotation={0,180,0}, label='START GAME', width=3000, height= 800, font_size=500
    })

    self.createButton({
        click_function='test', function_owner=self, position={0,0.1,-1.7},
        rotation={0,180,0}, label='TEST', width=3000, height= 800, font_size=500
    })

    self.createButton({
        click_function='test2', function_owner=self, position={0,0.1,1.7},
        rotation={0,180,0}, label='TEST2', width=3000, height= 800, font_size=500
    })
end

function test()
    bag = getObjectFromGUID('802756')
    params = {}
    params.position = {-16.04,1,-22.58}
    params.rotation = {0,180,0}    
    params.callback = 'callbackTest'
    params.callback_owner = Global
    item = bag.takeObject(params)
end

function test2()
    local objeto = getObjectFromGUID(test_object_GUID)
    posicion = objeto.getPosition()
    rotacion = objeto.getRotation()
    imagen = objeto.getCustomObject()
    print('Posicion:')
    print(posicion['x'])
    --print(posicion['y'])
    print(posicion['z'])
    -- print('Rotacion:')
    -- print(string.format("%.3f",rotacion['x']))
    -- print(string.format("%.3f",rotacion['y']))
    -- print(string.format("%.3f",rotacion['z']))
end

function callbackTest(object_taken)
    test_object_GUID = object_taken.getGUID()
end

function button_parameters(function_name, z_position)
    return {
        click_function=function_name, function_owner=self,position={7.5,0.1,z_position},
        rotation={0,0,0}, width=450, height=450, font_size=300
    }
end

function emptyButton()
    for k,v in pairs(no_of_players) do
        if v then
            self.editButton({index=k-1, label=""})
            no_of_players[k] = false
        end
    end
end

function selectedPlayers(number)
    emptyButton()
    self.editButton({index=number-1, label="X"})
    no_of_players[number] = true
end

function onePlayer()
    selectedPlayers(1)
end

function twoPlayers()
    selectedPlayers(2)
end

function threePlayers()
    selectedPlayers(3)
end

function fourPlayers()
    selectedPlayers(4)
end

function fivePlayers()
    selectedPlayers(5)
end

function sixPlayers()
    selectedPlayers(6)
end

function sevenPlayers()
    selectedPlayers(7)
end
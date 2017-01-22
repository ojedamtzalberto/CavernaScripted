
-- http://steamcommunity.com/profiles/76561197968345269

dRoll=0

function onload()
  self.createButton({ click_function = 'pickPlayer',
                      label = 'Random\nplayer',
                      function_owner = self,
                      position = {0, 0.18, 0},
                      rotation = {0, 0, 0},
                      width = 1000,
                      height = 1000,
                      font_size = 200})
  self.setName('Player picker')
  self.setDescription('v20160516')
end

function pickPlayer(clicked_object, player)
  dRoll=dRoll+1
  local sittingPlayers = {}
  for k,v in pairs({'White','Brown','Red','Orange','Yellow','Green','Teal','Blue','Purple','Pink','Black'}) do
    if Player[v].seated then
      table.insert(sittingPlayers,v)
    end
  end

  local pickedColor = sittingPlayers[math.random(#sittingPlayers)]
  printToAll('(#' .. dRoll .. ') ' .. Player[player].steam_name .. ' (' ..  player ..') picks ' .. Player[pickedColor].steam_name .. ' (' ..  pickedColor ..')', {self.getColorTint().r,self.getColorTint().g,self.getColorTint().b})
end
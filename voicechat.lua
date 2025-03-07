local Players = game:GetService("Players")
local VoiceChatService = game:GetService("VoiceChatService")

local function onChatMessage(player, message)
    if message:lower() == "/debanvocfrr" then
        if VoiceChatService then
            VoiceChatService:JoinVoice()
            print("Tentative de reconnexion au Voice Chat...")
        else
            print("Erreur : Le service Voice Chat n'est pas disponible.")
        end
    end
end

local function onPlayerAdded(player)
    player.Chatted:Connect(function(message)
        onChatMessage(player, message)
    end)
end

for _, player in pairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)

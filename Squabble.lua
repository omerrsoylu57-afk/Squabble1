local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Atton'un Atölyesi | Ekonomik Mod",
   LoadingTitle = "Sistem Hazırlanıyor...",
   LoadingSubtitle = "by Atton",
   ConfigurationSaving = { Enabled = true, FolderName = nil, FileName = "AttonPro" },
   KeySystem = false
})

local Tab = Window:CreateTab("Ekonomi", 4483362458)

-- Burası para miktarı girişi
local ParaMiktari = 0
Tab:CreateInput({
   Name = "Para Miktarı Gir",
   PlaceholderText = "Örn: 1000000000",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      ParaMiktari = tonumber(Text)
   end,
})

-- Burası parayı ekleme butonu
Tab:CreateButton({
   Name = "Parayı Ekle",
   Callback = function()
      -- DİKKAT: Burası oyunun koduna göre değişir!
      -- Squabble RP'de para genellikle şurada tutulur:
      local player = game.Players.LocalPlayer
      if player and player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Money") then
          player.leaderstats.Money.Value = ParaMiktari
          Rayfield:Notify({ Title = "Başarılı", Content = ParaMiktari .. " eklendi!", Duration = 5 })
      else
          Rayfield:Notify({ Title = "Hata", Content = "Para değeri bulunamadı! (Script oyuna göre güncellenmeli)", Duration = 5 })
      end
   end,
})

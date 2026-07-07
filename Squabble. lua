local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Atton'un Atölyesi - Squabble RP",
   LoadingTitle = "Script Yükleniyor...",
   LoadingSubtitle = "by Atton",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "AttonScript"
   },
   KeySystem = false
})

local Tab = Window:CreateTab("Ana Menü", 4483362458) 

local Button = Tab:CreateButton({
   Name = "Otomatik Farmı Başlat",
   Callback = function()
      -- Buraya senin daha önce yazdığın AutoFarm fonksiyonunu çağırıyoruz
      print("Otomatik kazanç sistemi aktif!")
      -- Buraya asıl oyun içi kodlarını ekleyebilirsin
      Rayfield:Notify({
         Title = "İşlem Başarılı",
         Content = "AutoFarm şu an çalışıyor!",
         Duration = 5,
      })
   end,
})

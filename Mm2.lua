-- Инициализация библиотеки с ожиданием загрузки
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/ThemeManager.lua"))()

local Window = Library:CreateWindow({
    Title = "MM2 System | @go8ai",
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- Вкладка авторизации
local AuthTab = Window:AddTab("Auth")
local AuthBox = AuthTab:AddInput("KeyBox", { Title = "Введите ключ", Value = "" })

AuthTab:AddButton("ПРОВЕРИТЬ", function()
    if Options.KeyBox.Value == "FREEMM2" then
        Library:Notify("Ключ принят. Активация функций...")
        -- Здесь происходит разблокировка функционала
    else
        Library:Notify("Ошибка: Неверный ключ")
    end
end)

-- Основные вкладки
local MainTab = Window:AddTab("Main")
MainTab:AddToggle("ESP", { Title = "Визуализация позиций (ESP)" })
MainTab:AddToggle("Aim", { Title = "Коррекция вектора обзора (Aimbot)" })

local AutoTab = Window:AddTab("Automated")
AutoTab:AddToggle("AutoShoot", { Title = "Автоматизация события атаки (Авто-выстрел)" })

-- Инициализация тем и настроек
Library:Notify("Система готова к работе.")

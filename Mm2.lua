-- Создание основного контейнера
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

-- Ввод ключа
local KeyInput = Instance.new("TextBox", MainFrame)
KeyInput.Size = UDim2.new(0, 260, 0, 40)
KeyInput.Position = UDim2.new(0, 20, 0, 20)
KeyInput.PlaceholderText = "Введите ключ..."

local AuthButton = Instance.new("TextButton", MainFrame)
AuthButton.Size = UDim2.new(0, 260, 0, 40)
AuthButton.Position = UDim2.new(0, 20, 0, 70)
AuthButton.Text = "ПРОВЕРИТЬ"

-- Функционал
local FunctionContainer = Instance.new("Frame", MainFrame)
FunctionContainer.Visible = false
FunctionContainer.Size = UDim2.new(1, 0, 1, -120)
FunctionContainer.Position = UDim2.new(0, 0, 0, 120)
FunctionContainer.BackgroundTransparency = 1

local function CreateToggle(name, yPos)
    local btn = Instance.new("TextButton", FunctionContainer)
    btn.Size = UDim2.new(0, 260, 0, 40)
    btn.Position = UDim2.new(0, 20, 0, yPos)
    btn.Text = name
end

CreateToggle("ESP (Визуализация)", 0)
CreateToggle("Аимбот (Коррекция обзора)", 50)
CreateToggle("Авто-выстрел в Мардера", 100)

-- Логика авторизации
AuthButton.MouseButton1Click:Connect(function()
    if KeyInput.Text == "FREEMM2" then
        FunctionContainer.Visible = true
        AuthButton.Text = "УСПЕШНО"
    else
        AuthButton.Text = "НЕВЕРНО"
        task.wait(1)
        AuthButton.Text = "ПРОВЕРИТЬ"
    end
end)

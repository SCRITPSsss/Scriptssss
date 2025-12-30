local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- Run this every frame
RunService.Heartbeat:Connect(function()
    local gui = CoreGui:FindFirstChild("TigyScriptUI")
    if gui then
        gui:Destroy()
    end
end)

--[[
                                                                            
                                                                        
  .--.--.                                                        ____   
 /  /    '.                 ,---,  ,--,                        ,'  , `. 
 |  :  /`. /    ,---.      ,---.'|,--.'|            ,--,     ,-+-,.' _ | 
 ;  |  |--`    '   ,'\     |   | :|  |,           ,'_ /|  ,-+-. ;   , || 
 |  :  ;_     /   /   |    |   | |`--'_      .--. |  | : ,--.'|'   |  || 
  \  \    `. .   ; ,. :  ,--.__| |,' ,'|   ,'_ /| :  . ||   |  ,', |  |, 
   `----.   \'   | |: : /   ,'   |'  | |   |  ' | |  . .|   | /  | |--'  
   __ \  \  |'   | .; :.   '  /  ||  | :   |  | ' |  | ||   : |  | ,     
  /  /`--'  /|   :    |'   ; |:  |'  : |__ :  | : ;  ; ||   : |  |/      
 '--'.     /  \   \  / |   | '/  '|  | '.'|'  :  `--'   \   | |`-'       
   `--'---'    `----'  |   :    :|;  :    ;:  ,      .-./   ;/           
                        \   \  /  |  ,   /  `--`----'   '---'            
                         `----'    ---`-'                                

developer: discord Error 404#0001
]]

local library = {}

-- Function to create a new UI element
function library.new(className)
  return Instance.new(className)
end

-- Function to create the UI
function library:create()
  -- Create the main frame
  self.frame = library.new("Frame")
  self.frame.Name = "SimpleUI"
  self.frame.Size = UDim2.new(0, 200, 0, 50)
  self.frame.Position = UDim2.new(0.5, -100, 0.5, -25)
  self.frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  -- Create the title label
  self.title = library.new("TextLabel")
  self.title.Name = "Title"
  self.title.Parent = self.frame
  self.title.Position = UDim2.new(0, 10, 0, 10)
  self.title.Size = UDim2.new(1, -10, 0, 30)
  self.title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  self.title.BackgroundTransparency = 1
  self.title.Font = Enum.Font.GothamSemibold
  self.title.Text = "Simple UI"
  self.title.TextColor3 = Color3.fromRGB(0, 0, 0)
  self.title.TextSize = 18

  -- Create the close button
  self.closeButton = library.new("TextButton")
  self.closeButton.Name = "CloseButton"
  self.closeButton.Parent = self.frame
  self.closeButton.Position = UDim2.new(1, -30, 0, 10)
  self.closeButton.Size = UDim2.new(0, 20, 0, 30)
  self.closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  self.closeButton.BackgroundTransparency = 1
  self.closeButton.Font = Enum.Font.GothamSemibold
  self.closeButton.Text = "X"
  self.closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
  self.closeButton.TextSize = 18

  -- Add an event to close the UI when the close button is clicked
  self.closeButton.MouseButton1Click:Connect(function()
    self.frame:Destroy()
  end)
end

return library

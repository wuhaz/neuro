-- Function to create a popup message
function createPopup(message)
    -- Define the popup window
    local popup = window.new(300, 100)
    popup.title = "Executor Message"
    
    -- Add a label with the message
    local label = label.new(message)
    label.width = 280
    label.align = "center"
    label.parent = popup
    
    -- Add a button to close the popup
    local closeButton = button.new("Close")
    closeButton.onclick = function()
        popup:close()
    end
    closeButton.width = 100
    closeButton.align = "center"
    closeButton.parent = popup
    
    -- Center the popup window on the screen
    popup:center()
    
    -- Display the popup
    popup:show()
end

-- Call the function to create the popup with the specified message
createPopup("Your executor is only level 3, lil bro. You ain't loading nothing nexy.")

// something.nut
// This is a test for vscript for an odd project I've been meaning to make
// Im planning for this to be called Obj_New_Horizons, a 50+ minute long zombie escape/survival map


::DisplayText <- function(text, duration = 5.0, color = "255 255 255", channel = 0) {
    // Create an env_message entity
    local message = Entities.CreateByClassname("env_message");
    
    // Set up the message properties
    message.__KeyValueFromString("message", text);
    message.__KeyValueFromFloat("holdtime", duration);
    message.__KeyValueFromString("color", color);
    message.__KeyValueFromInt("textsize", 20); // Font size (10-255)
    message.__KeyValueFromInt("channel", channel); // Different channels don't overlap
    
    // Display to all players
    EntFireByHandle(message, "ShowMessage", "", 0.0, null, null);
    
    // Clean up after display time
    EntFireByHandle(message, "Kill", "", duration + 0.1, null, null);
    
    printl("Displayed text: " + text);
}

// Test function - call this from console with: script_execute display_text.nut
function TestDisplay() {
    DisplayText("Hello World!", 3.0, "0 255 0"); // Green text for 3 seconds
    DisplayText("Second Message", 5.0, "255 0 0", 1); // Red text on different channel
}
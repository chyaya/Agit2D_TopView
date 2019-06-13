if keyboard_check_pressed(vk_anykey)
{
	if(ord(keyboard_lastchar) == 96)
	{
		console_toggle(my_console);
		keyboard_lastchar = "";
		return;		
	}
}

/*****************************
* If a command has been submitted...
*****************************/
if console_submit(my_console) {

    /*****************************
    * Here we can put all our commands.
    *****************************/
    
    /*****************************
    * If user enters into the console:
    * show_message "message"
    *****************************/
    if console_cmd(my_console,"item") {
    
        /*****************************
        * Get the message value to display
        *****************************/
        var itemId = floor(real(console_value(my_console,1)));
		var itemCount = floor(real(console_value(my_console,2)));
        	
		sInven_AddItem(oPlayerController.m_PlayerObject.m_Inven_Bag, itemId, itemCount);
    }

}

/* */
/*  */

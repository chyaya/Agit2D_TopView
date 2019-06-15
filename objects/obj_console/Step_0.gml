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
    if console_cmd(my_console,"item")
	{
        /*****************************
        * Get the message value to display
        *****************************/
        var itemId = floor(real(console_value(my_console,1)));
		var itemCount = floor(real(console_value(my_console,2)));
        
		if(console_value_count(my_console) == 0)
		{
			sProp_SaveItemCodeFile();
			url_open(ITEM_FILENAME);
		}
		else
		{
			sInven_AddItem(oPlayerController.m_PlayerObject.m_Inven_Bag, itemId, itemCount);
		}
    }
	else if console_cmd(my_console, "save")
	{
		var json = SaveInstances();
		var file = file_text_open_write(SAVE_FILENAME);
		file_text_write_string(file, json);
		file_text_close(file);

		//url_open(SAVE_FILENAME);	
	}
	else if console_cmd(my_console, "exit") || console_cmd(my_console, "quit")
	{
		game_end();
	}
	else if console_cmd(my_console, "reset")
	{
		oWorldManager.m_DontSave = true;
		
		file_delete(SAVE_FILENAME);	
		game_restart();
	}

}

/* */
/*  */

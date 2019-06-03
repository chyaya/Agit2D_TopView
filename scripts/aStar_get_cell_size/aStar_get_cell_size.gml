/// @description aStar_get_cell_size()
/*
 * Gives the size (in pixels) of a cell.
 *
 * Returns: The size of a cell, or undefined if the pathfinder is not initialized.
*/
if(instance_exists(oPathFinder))
    return oPathFinder.cellSize;
return undefined;

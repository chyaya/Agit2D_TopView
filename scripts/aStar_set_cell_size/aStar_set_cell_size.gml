/// @description aStar_set_cell_size(size)
/// @param size
/*
 * Sets the size of a cell.
 *
 * size: The new size of each cell.
 *
 * Returns: none
*/
if(instance_exists(oPathFinder))
    oPathFinder.cellSize = argument0;

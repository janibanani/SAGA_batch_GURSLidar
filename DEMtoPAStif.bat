@echo off
echo ************* This a CONVERT batch file ***********************
pause
FOR %%G IN (*.asc) DO (
dssss
saga_cmd io_grid 6 -GRID %%~nG.sgrd -FILENAME %%G -CAPTION 0 -CELLSIZE 1 -SEPARATOR 3


saga_cmd ta_lighting "Analytical Hillshading" -ELEVATION %%~nG.sgrd -SHADE %%~nG_shd.sgrd  -METHOD 0 -AZIMUTH 315 -DECLINATION 45 -EXAGGERATION 4

saga_cmd io_grid_image 0 -GRID %%~nG_shd.sgrd -FILE PAS_TIF/%%~nG_shd.tif -COLOURING 2 -COL_PALETTE 2 -COL_REVERT 1 -STRETCH_MIN 0.000 -STRETCH_MAX 2.500

)
pause

function hFig = script_view_mri_overlay(MriFile, OverlayFile)

[hFig, iDS, iFig] = view_mri(MriFile);

[isOk, TessInfo] = panel_surface('SetSurfaceData', hFig, 1, "Anatomy", OverlayFile, 0);

pause(10);
for z = 100:512
	figure_mri('SetLocation', 'voxel', hFig, [], [256, 135,z]);
	pause(0.1);
end

pause(1000000);


end

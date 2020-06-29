function readcadstl
% ruogu7(380545156@qq.com)
% Start: Am 10:14 Mar. 20th, 2020
% End: Pm 10:14 Mar. 20th, 2020
% Example:
% 

%% clc; clear all;

model = createpde
importGeometry(model,'DaFenQi.stl');
pdegplot(model,'FaceLabels','on')

% Import an STL mesh, returning a PATCH-compatible face-vertex structure
fv = stlread('DaFenQi.stl');
% fv = stlread('KaiXuanMen.stl');
% fv = stlread('ZhaoCaiMao.stl');
% fv = stlread('data.stl');
% 
% fv = stlread('USV_boat.stl');


% Render The model is rendered with a PATCH graphics object. We also add some dynamic lighting, and adjust the material properties to change the specular highlighting.
clear all; clc;
fv = stlread('2-complete.stl');
patch(fv,'FaceColor',       [0.8 0.8 1.0], ...
         'EdgeColor',       'none',        ...
         'FaceLighting',    'gouraud',     ...
         'AmbientStrength', 0.15);

% Add a camera light, and tone down the specular highlighting
camlight('headlight');
material('dull');
title('Modeling and Process Simulation of 3D Structure By RUOGU7')

% Fix the axes scaling, and set a nice view angle
axis('image');
view([-135 35]);

% Partial Differential Equation Toolbox

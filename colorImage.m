function [coloredIm] = colorImage(filename,coloringStyle, cmap)
%Binarizes and fills in colors an image paint bucket style.
%By Jen Cardona 2020
%   INPUTS:
%       - filename - filename (including path) as a string
%       - coloringStyle - style to be used for coloring. Choices: 'random'
%       - cmap - string designating colormap (e.g. 'jet' or 'hot'), or []
%   OUTPUTS:
%       - coloredIm - m x n x 3 double representing RGB image


%Read and binarize image file
im = imread(filename);
im = im2bw(im);

%Find regions in image and ranomly fill
newIm = findRegions(im);

%Color image with given style
if strcmp(coloringStyle, 'random')
    coloredIm = fillRegions_Random(newIm, cmap);
end

%Show colored image
figure;
imshow(coloredIm)

end


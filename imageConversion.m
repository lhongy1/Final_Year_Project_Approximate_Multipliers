img = imread('slope.tif');

if size(img, 3) == 3
    img = rgb2gray(img);
end

pixels = double(img(:));
pixels = uint8(pixels/2);

decimalList = pixels;

fileID = fopen('slope.txt', 'w');
fprintf(fileID, '%d\n', decimalList);
fclose(fileID);
originalImage = imread('exact_3.png');
compressedImage = imread('carry84444_3.png');

originalImage = im2double(originalImage);
compressedImage = im2double(compressedImage);

mse = sum(sum((originalImage - compressedImage) .^ 2)) / numel(originalImage);

maxPixelValue = 1;

psnrValue = 10 * log10((maxPixelValue^2) / mse);

disp(['PSNR value: ', num2str(psnrValue)]);

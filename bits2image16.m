fid = fopen('multipliedImage1.txt', 'r'); 
image_data = fscanf(fid, '%d\n');
fclose(fid);

image_data = image_data*4;

height = 256; 
width = 256;  

if numel(image_data) ~= height * width
    error('Incorrect number of pixel values');
end

img_reconstructed = reshape(image_data, height, width);


imshow(uint16(img_reconstructed)); 
img_reconstructed_uint16 = uint16(img_reconstructed);


output_file = 'carry84444_3.png';
imwrite(img_reconstructed_uint16, output_file);

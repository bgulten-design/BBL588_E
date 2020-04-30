function [filtered_img] = filter_gs_img(img,kernel)


[size_i,size_j] = size(img);
[f_size_i,f_size_j] = size(kernel);

filtered_img = ones(size_i,size_j);
if f_size_i == 3
    
  for i= 2 : size_i-1
    for j= 2 : size_j-1
    filtered_img(i,j) = (img(i-1,j-1)*kernel(1,1))+(img(i-1,j)*kernel(1,2))+(img(i-1,j+1)*kernel(1,3))+(img(i,j-1)*kernel(2,1))+(img(i,j)*kernel(2,2))+(img(i,j+1)*kernel(2,3))+(img(i+1,j-1)*kernel(3,1))+(img(i+1,j)*kernel(3,2))+(img(i+1,j+1)*kernel(3,3));
        
    end  
  end
%   filtered_img(1,:) = img(1,:);
%   filtered_img(:,1) = img(:,1);
%   filtered_img(size_i-1,:) = img(size_i-1,:);
%   filtered_img(:,size_j-1) = img(:,size_j-1);
end

if f_size_i == 5
   for i= 3 : size_i-2
    for j= 3 : size_j-2
     filtered_img(i,j) = img(i-2,j-2)*kernel(1,1)+img(i-2,j-1)*kernel(1,2)+img(i-2,j)*kernel(1,3)+img(i-2,j+1)*kernel(1,4)+img(i-2,j+2)*kernel(1,5) +img(i-1,j-2)*kernel(2,1)+img(i-1,j-1)*kernel(2,2)+img(i-1,j)*kernel(2,3)+img(i-1,j+1)*kernel(2,4)+img(i-1,j+2)*kernel(2,5)+img(i,j-2)*kernel(3,1)+img(i,j-1)*kernel(3,2)+img(i,j)*kernel(3,3)+img(i,j+1)*kernel(3,4)+img(i,j+2)*kernel(3,5)+img(i+1,j-2)*kernel(4,1)+img(i+1,j-1)*kernel(4,2)+img(i+1,j)*kernel(4,3)+img(i+1,j+1)*kernel(4,4)+img(i+1,j+2)*kernel(4,5)+img(i+2,j-2)*kernel(5,1)+img(i+2,j-1)*kernel(5,2)+img(i+2,j)*kernel(5,3)+img(i+2,j+1)*kernel(5,4)+img(i+2,j+2)*kernel(5,5);
    end
   end
   
   
%    filtered_img(1,:) = img(1,:);
%    filtered_img(2,:) = img(2,:);
%    filtered_img(:,1) = img(:,1);
%    filtered_img(:,2) = img(:,2);
%    filtered_img(size_i-1,:) = img(size_i-1,:);
%    filtered_img(size_i-2,:) = img(size_i-2,:);
%    filtered_img(:,size_j-1) = img(:,size_j-1);
%    filtered_img(:,size_j-2) = img(:,size_j-2);

end

end
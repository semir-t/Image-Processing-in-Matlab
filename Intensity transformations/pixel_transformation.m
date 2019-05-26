function I = pixel_transformation(Io,LUT)
    
    [m,n,l] = size(Io); %Get size of original image
    
    I = uint8(zeros(m,n,l)); %Create blank new image
    
    for i= 1:m
        for j = 1:n
            for k = 1:l
                I(i,j,k) = uint8(LUT(Io(i,j,k)+1));
            end
        end
    end
end
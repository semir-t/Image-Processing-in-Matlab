function I = pixel_value_filter(Io,R,G,B)

rl = R(1);
rh = R(2);
gl = G(1);
gh = G(2);
bl = B(1);
bh = B(2);
[m,n,l] = size(Io);
I = uint8(zeros(m,n,l));
for i = 1:m
    for j = 1:n
        R = Io(i,j,1);
        G = Io(i,j,2);
        B = Io(i,j,3);
        if ( R > rl && R < rh && G > gl && G < gh && B > bl && B < bh)
            I(i,j,1) = R;
            I(i,j,2) = G;
            I(i,j,3) = B;          
        else
            gray = 1/3*(0.3*R+0.59*G+0.11*B);
            I(i,j,1) = gray;
            I(i,j,2) = gray;
            I(i,j,3) = gray;
        end
    end
end
end
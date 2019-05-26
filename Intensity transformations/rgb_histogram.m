function h = rgb_histogram(I)
    [m,n,l] = size(I);

for i=1:256
     h(i,1) = 0;
     h(i,2) = 0;
     h(i,3) = 0;
end

for i = 1:m
    for j = 1:n
        for k = 1:3
            x = I(i,j,k);
            h(x + 1,k) = h(x+1,k) + 1;
        end
    end
end

plot(h(:,1),'r');
hold on
plot(h(:,2),'g');
plot(h(:,3),'b');
hold off
end
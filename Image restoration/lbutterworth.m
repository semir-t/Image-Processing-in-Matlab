function bl = lbutterworth(im,d,n)
	%Create LP butterworth filter which size is same 
	% as the size of the image
	[h,w] = size(im);
	[x,y] = meshgrid(-floor(w/2) : floor((w-1)/2), - floor(h/2) : floor((h-1)/2));
	bl = 1./(1+(sqrt(2)-1) * ((x.^2 + y.^2)/d^2).^n);
end
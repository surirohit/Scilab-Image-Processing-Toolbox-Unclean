f1=scf(1);
// f2=scf(2);
if(hasFrame(a))
	frame = readFrame(a);
	[c d]=size(frame(1));
     	z(:,:,1)=matrix(frame(1),c,d);; 
     	z(:,:,2)=matrix(frame(2),c,d); 
     	z(:,:,3)=matrix(frame(3),c,d);
     	[NumberOfRows NumberOfColumns NumberOfChannels] = size(z);
     	NumberOfPixels = NumberOfRows * NumberOfColumns;
     	MaxGrayValue = 2 ^ 8 - 1;
     	ColorMap = double(matrix(z, NumberOfPixels, NumberOfChannels))/ MaxGrayValue;
     	Img = matrix(1 : NumberOfPixels, NumberOfRows, NumberOfColumns);
end
while hasFrame(a)
    stacksize('max');
    scf(f1);
    frame = readFrame(a);
    z(:,:,1)=matrix(frame(1),c,d);; 
    z(:,:,2)=matrix(frame(2),c,d); 
    z(:,:,3)=matrix(frame(3),c,d);
    ColorMap = double(matrix(z, NumberOfPixels, NumberOfChannels))/ MaxGrayValue;
	show(Img,ColorMap);
    // fg_mask = readForegroundMask(frame);
    // scf(f2);
    // imshow(fg_mask);
end
close();

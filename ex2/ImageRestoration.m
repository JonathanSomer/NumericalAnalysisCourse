n_rows = size(gate, 1);
n_cols = size(gate, 2);

figure
subplot(2,2,1);
imshow(gate);
title("original gate")

subplot(2,2,2);
badGate = gate(1:10:end,:,:);
imshow(badGate);
title("badGate = gate(1:10:end,:,:)")

badGate = double(badGate);
restoredGate = uint8(ImageInterpolation(badGate, n_rows, n_cols, 10, @PWLinear));

subplot(2,2,3);
imshow(restoredGate);
title("Linear Interpolation")


restoredGate = uint8(ImageInterpolation(badGate, n_rows, n_cols, 10, @LagrangeInterp));
subplot(2,2,4);
imshow(restoredGate);
title("Lagrange Interpolation")



% v2
figure
subplot(2,2,1);
imshow(gate);
title("original gate")

subplot(2,2,2);
badGate = gate(1:3:end,:,:);
imshow(badGate);
title("badGate = gate(1:3:end,:,:)")


badGate = double(badGate);

restoredGate = uint8(ImageInterpolation(badGate, n_rows, n_cols, 3, @LagrangeInterp));
subplot(2,2,4);
imshow(restoredGate);
title("Lagrange Interpolation")


restoredGate = uint8(ImageInterpolation(badGate, n_rows, n_cols, 3, @PWLinear));
subplot(2,2,3);
imshow(restoredGate);
title("Linear Interpolation")



% with fix:
figure
subplot(2,2,1);
badGate = gate(1:3:end,:,:);
imshow(badGate);
title("badGate = gate(1:3:end,:,:)")

badGate = double(badGate);

restoredGate = uint8(ImageInterpolationFix(badGate, n_rows, n_cols, 3));
subplot(2,2,2);
imshow(restoredGate);
title("Polynomial Fix for 1:3 ratio image")


subplot(2,2,3);
badGate = gate(1:10:end,:,:);
imshow(badGate);
title("badGate = gate(1:10:end,:,:)")

badGate = double(badGate);

restoredGate = uint8(ImageInterpolationFix(badGate, n_rows, n_cols, 10));
subplot(2,2,4);
imshow(restoredGate);
title("Polynomial Fix for 1:10 ratio image")






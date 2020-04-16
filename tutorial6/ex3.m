N = 100;
h = 2 * pi/ N;
x = (0 : N-1)*h;

u = exp(sin(x));
uhat = fft(u);
duhat = uhat .* [0 : N/2 -N/2+1 : -1] .* 1i;  % Derivative in the fourier space
du = real(ifft(duhat));  % Inverse transform
dduhat = -uhat .* [0 : N/2 -N/2+1 : -1] .^ 2; % Second order derivative
ddu = real(ifft(dduhat));

plot(x, exp(sin(x)) .* cos(x), x, du, '*', ...
     x, exp(sin(x)) .* (cos(x) .^ 2 - sin(x)), x, ddu,'.');
lg = legend('Exact u_x','FFT u_x','Exact u_{xx}','FFT u_{xx}');
set(lg,'Location','SouthEast');
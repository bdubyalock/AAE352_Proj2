%delta_sigma = ((1/C)*(da_dn))^(1/m) 
%delta_sigma = 1/(beta_1*sqrt(pi*a_1))
%beta_1 = 30.795*x^4 - 51.44 * x^3 + 29.462 * x^2 - 6.2025 * x +2.0791
%da_dn = C * (delta_K)^m
%sigma_ref = P / ((2*w + D)* t)
%delta_K = beta_1 * delta_sigma * sqrt(pi*a_1)
%delta_K = (beta_1 * P * sqrt(pi*a_1)) / ((2*w + D)* t)

%Interpolation for #3: ((.24) * (3e-9/3.1e-8))+16.68
da_dn =   [1.2/12 , 2.4 / 11 , 6/9]; %um/striation
da_dn = da_dn .* 1e-6;
delta_K = [8.97   , 11.07    , 16.7032]; %derived from table (Mpa * sqrt(m))
delta_K = delta_K * 1e6;
%from excel: y = 1.36808E-25x^3.00523E+00
C = 1.36808e-25;
m = 3.00523;

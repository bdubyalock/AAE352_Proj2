%delta_sigma = ((1/C)*(da_dn))^(1/m) 
%delta_sigma = 1/(beta_1*sqrt(pi*a_1))
%beta_1 = 30.795*x^4 - 51.44 * x^3 + 29.462 * x^2 - 6.2025 * x +2.0791
%da_dn = C * (delta_K)^m
%sigma_ref = P / ((2*w + D)* t)
%delta_K = beta_1 * delta_sigma * sqrt(pi*a_1)
%delta_K = (beta_1 * P * sqrt(pi*a_1)) / ((2*w + D)* t)

%Calculated using NASA document:
%Interpolation for #3: ((.24) * (3e-9/3.1e-8))+16.68
a = [1.83e-3 3.81e-3 7.39e-3];
da_dn =   [1.2/12 , 2.4 / 11 , 6/9]; %um/striation
da_dn = da_dn .* 1e-6;
delta_K = [8.97   , 11.07    , 16.7032]; %derived from table (Mpa * sqrt(m))
delta_K = delta_K * 1e6
%from excel: y = 1.36808E-25x^3.00523E+00
%C = 1.368e-25; %constant
C = 1.35173e-28;
m = 3.01; %constant
%delta_sigma_1 = ((1/C).*(da_dn)).^(1/m)
%sigma_ref_1 = mean(delta_sigma_1)
%dimensions for material from project description:
w = 23e-3; %constant
D = 25.4e-3; %constant
t = 9.4e-3; %constant
%P = sigma_ref*(2*w+D)*t;

% The Next Section will calculate the minimum crack size (a) for given
% yield stress

% yield_stress = 386e6; %given
% delta_sigma = 0;
% a = 0.0001;
% while (yield_stress - delta_sigma >= 0) && (a < w)
%     x = a/w;
%     beta_1 = 30.795*x^4 - 51.44 * x^3 + 29.462 * x^2 - 6.2025 * x +2.0791;
%     delta_sigma = 1/(beta_1*sqrt(pi*a)); %%MISTAKE IN ROADMAP! deltaK->num 
%     fprintf('a = %.04f mm, delta_sigma = %f Pa, error = %f \n', a*10^3, delta_sigma, yield_stress - delta_sigma);
%     a = a+.01e-3;
% end

%delta_sigma found above
x = a./w;
beta_1 = 30.795.*x.^4 - 51.44 .* x.^3 + 29.462 .* x.^2 - 6.2025 .* x +2.0791;
delta_sigma_2 = delta_K./(beta_1.*sqrt(pi.*a))
sigma_ref_2 = mean(delta_sigma_2)

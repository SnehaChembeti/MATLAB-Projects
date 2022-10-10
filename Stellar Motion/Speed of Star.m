load starData                                               % Loading the content of the file named starData %
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14
lambdaEnd = lambdaStart + (nObs - 1)*lambdaDelta            % Finding the highest wavelength %
lambda = lambdaStart:lambdaDelta:lambdaEnd                  % An array of start and end with delay %
s = spectra(:, 6)                                           % The spectrum for 6th colum star (or) star HD 94028 %
plot(lambda, s, ".-")                                       % plotting the graph between Wavelength and Intensity %
xlabel("Wavelength")                                        % Labelling x %
ylabel("Intensity")                                         % Labelling y %
[sHa, idx] = min(s)                                         % Finding the minimum spctral line %
lambdaHa = lambda(idx)                                      % Finding the wavelength at the minimum spectral line %
hold on
plot(lambdaHa, sHa, "rs", "MarkerSize", 8)                  % Marking the least point with markersize 8 %
hold off
z = (lambdaHa/656.28) - 1                                   % Redshift factor %
speed = z*299792.458                                        % Finding the speed of star wrt the Earth %

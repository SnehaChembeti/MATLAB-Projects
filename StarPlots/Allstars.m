load starData                                     % Loading the content of the file named starData %
[sHa,idx] = min(spectra);                         % Finding the minimum intensity of spectrum for every star %
lambdaHa = lambda(idx);                           % Finding the respective Wavelength of those minimum spectrum of all stars %
z = lambdaHa/656.28 - 1;                          % Finding the Redshift factor of all stars %
speed = z*299792.458                              % Findinf the speed of all stars wrt to the Earth %
for v = 1:7                                       % Looping through of the star spectrum (here there are 7) %
    s = spectra(:, v)                             % each star spectrum %
    if speed(v) <= 0                              % If speed is negative (coming towards the Earth) %
        plot(lambda, s, "--")                     % Plotting %
    else                                          % Speed is positive (away from the Earth)
        plot(lambda, s, "LineWidth", 3)           % Plotting %
    end
    hold on                                       % Holding on to draw the other graphs on the same sheet %
end
hold off
legend(starnames)                                 % Star names wrt to the line %
movaway = starnames (speed > 0)                   % stars that are moving away from the Earth %

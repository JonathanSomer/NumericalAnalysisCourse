function [range] = FractionValueRange(lx,rx,la,ra)
    options = [lx/la, lx/ra, rx/la, rx/ra];
    range = max(options) - min(options);
end
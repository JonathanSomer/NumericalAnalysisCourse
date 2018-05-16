function [bool] = ValidateLagrangeInterpInput(x,y)
    bool = false;
    if length(x) ~= length(unique(x))
        fprintf("Error: some x value appears twice in the sample!")
        bool = true;
    end
    
    if length(x) ~= length(y)
        fprintf("Error: x and y of different length")
        bool = true;
    end
end
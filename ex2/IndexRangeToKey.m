function [key] = IndexRangeToKey(start_index, end_index)
    key = char(char(start_index) + char(end_index));
end
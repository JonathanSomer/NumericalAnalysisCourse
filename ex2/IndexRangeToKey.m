function [key] = IndexRangeToKey(start_index, end_index)
    key = char("(" + start_index + "," + end_index + ")");
end
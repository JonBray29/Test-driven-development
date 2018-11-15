function [value] = reward(stateValue, actionValue)
    if (stateValue == 5.0 && actionValue == 3.0)
        value = 10.0;        
    else
        value = 0.0;
    end
end
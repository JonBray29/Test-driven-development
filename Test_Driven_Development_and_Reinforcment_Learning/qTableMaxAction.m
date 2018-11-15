function [action] = qTableMaxAction(qTable, state)
       max(max(qTable, [], 1), [],2);
       newTable = max(qTable, [], 1);
       [maxValue, maxIndex] = max(newTable, [], 2);
       action = maxIndex;
end
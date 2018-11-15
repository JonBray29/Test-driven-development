function [actionValue] = qLearningSelectAction(qTable, state)
    x = rand();
    if (x <= 0.8)
        [val, ind] = max(qTable(state,:));
        actionValue = ind;
    else
        rind = randi([1 4]);
        actionValue = rind;
    end
end
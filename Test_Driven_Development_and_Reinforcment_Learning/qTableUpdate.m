function [outTable] = qTableUpdate(qTable, state, action, reward, nextState)
learnRate = 0.2;
discount = 0.9;

MaxQ=max(qTable,[],2);
qTable(state,action)=  qTable(state, action) + learnRate * (reward + (discount * MaxQ(nextState)) - qTable(state, action));
outTable = qTable;

end
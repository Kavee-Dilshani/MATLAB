function Data = invertData(Data,class)

% This function is used tio invert the +1 Class and -1 Classes

%==================Interest class=================
indices = (Data(:,end) == class);
Data(indices,end) = 1;

ind = ~indices;
Data(ind,end) = -1;

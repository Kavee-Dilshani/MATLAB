data={
    'sunny','warm','normal','strong','warm','same','yes';
    'sunny','warm','high','strong','warm','same','yes';
    'rainy','cold','high','strong','warm','change','no';
     'sunny','warm','high','strong','cool','change','yes'
};

attribute = size(data,2)-1;
hypothesis = repmat('0',1,attribute);

for i=1:size(data,1)
    if strcmp(data{i,end},'yes') %check whether positive data
        if all(hypothesis == '0') %check whether all hypothesis are 0
            for j=1:attribute
                hypothesis(j) = data{i,j}(1);
                temp_hypothesis{j} = data{i,j};
            end
        else
            for j=1: attribute
                if ~strcmp(temp_hypothesis{j},data{i,j})
                    temp_hypothesis{j} = '?';
                end
            end
        end
    end
end

disp(temp_hypothesis);
            


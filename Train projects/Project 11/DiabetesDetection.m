diabets = readtable('diabetes.csv')
whos diabetes

X = diabetes(:,1:8)
X = table2array(X)

y = diabetes(:,9)
y = table2array(y)

net = patternnet(5);

view(net)

[net, tr] = train(net, X', y');
    

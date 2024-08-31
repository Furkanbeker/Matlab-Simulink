% PROJECT OVERVIEW
% - Breast cancer is the most common cancer among women worldwide, accounting for 25% of all cancer 
%   cases and affected 2.1 Million people in 2015.

% - Early diagnosis significantly increases the chances of survival. A key challenge in cancer 
%   detection is how to classify tumors into (1) malignant or (2) benign.

% - Machine Learning (ML) dramatically improves the accuracy of diagnosis. Research indicates that 
%   most experienced physicians can diagnose cancer with 79.97% accuracy while 91.1% (higher) correct 
%   diagnosis is achieved using ML.

cancer = readtable('cancer.csv')

%plot(cancer(:,1), cancer(:,1))
whos cancer

X= cancer(:,1:30)

y = cancer(:,31)
y = table2array(y)

figure
scatter(X(:,4), X(:,5), [], y)
xlabel('Mean Radius')
ylabel('Mean Smoothness')
title('Mean Radius vs. Mean Smoothness')

net = patternnet([10,8, 5]);
view(net)

[net, tr] = train(net, X', y');


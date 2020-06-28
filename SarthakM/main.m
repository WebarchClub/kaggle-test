clear;
data=load("train_modified.csv");
x=data(:,2:7);
y=data(:,1);
theta=algo(x,y);

x2=load("test_modified.csv");
x2=mapFeature(x2);
h=zeros(size(x2*theta));
h=1./(1+exp(-(x2*theta)));

pred=zeros(length(h),1);
pred(find(h>=0.5))=1;

y=222;
fprintf("Saving pred22.csv");
csvwrite('pred22.csv',pred);
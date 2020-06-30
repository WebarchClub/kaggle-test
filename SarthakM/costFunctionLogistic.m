function [J, grad] = costFunctionLogistic(theta,x,y)
  

m=length(y); 
n=length(theta); 
J=0;
grad=zeros(size(theta));

h=zeros(size(x*theta));
h=1./(1+exp(-(x*theta)));
a=-y.*log(h);
b=(1-y).*log(1-h);
J=(1/m)*sum(a-b);

for i = 1:n
  grad(i)=(1/m)*sum((h-y).*x(:,i));
end

end

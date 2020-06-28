function theta=algo(x,y)
x=mapFeature(x);
options = optimset("GradObj", "on", "MaxIter", "400");
initialTheta=zeros(size(x,2),1);

lambda = 1;

[theta,cost] = fminunc(@(t)(costFunctionLogisticReg(t,x,y,lambda)),initialTheta,options);
fprintf('Cost at theta found by fminunc: %f\n', cost);
end
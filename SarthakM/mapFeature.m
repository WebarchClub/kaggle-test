function out = mapFeature(X)

degree = 2;
out = ones(size(X));
for i = 1:degree
    for j = 0:i
		for k = 0:j
			for m = 0:k
				for n = 0:m
					for o = 0:n
						out(:, end+1) = (X(:,1).^(i-j)).*(X(:,2).^(j-k)).*(X(:,3).^(k-m)).*(X(:,4).^(m-n)).*(X(:,5).^(n-o)).*(X(:,6).^o);
					end
				end
			end
		end
    end
end
end
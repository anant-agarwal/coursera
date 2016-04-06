function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positive_pos = find(y==1);
negative_pos = find(y==0);
pos_x1 = X(:,1)(positive_pos);
pos_x2 = X(:,2)(positive_pos);
pos_y = ones(size(positive_pos) )(:,1);
plot3(pos_x1, pos_x2, pos_y, 'k+', 'LineWidth', 2, 'MarkerSize', 7); 

neg_x1 = X(:,1)(negative_pos);
neg_x2 = X(:,2)(negative_pos);
neg_y = zeros(size(negative_pos))(:,1);
plot3(neg_x1,neg_x2,neg_y, 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);






% =========================================================================



hold off;

end

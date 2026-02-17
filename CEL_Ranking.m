clc;
clear all;
close all;

n = 4;

A = [0 1 1 0;
     0 0 1 0;
     0 0 0 1;
     1 0 0 0];

disp('Comparison Matrix A = ');
disp(A);

[V,D] = eig(A);

eigenvalues = diag(D);

[max_eig, index] = max(real(eigenvalues));

ranking_vector = real(V(:,index));

disp('Largest Eigenvalue = ');
disp(max_eig);

disp('Raw Ranking Vector = ');
disp(ranking_vector);

[sorted_scores, order] = sort(ranking_vector,'descend');

disp('Final Ranking Order:');
for i = 1:n
    fprintf('Rank %d : Player %d (Score = %f)\n', ...
        i, order(i), sorted_scores(i));
end

figure;
bar(ranking_vector);
xlabel('Player Number');
ylabel('Eigenvector Value');
title('Tournament Ranking');
grid on;

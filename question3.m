% QUESTION 3

% PART 1
load('H.mat')

total = 0;
ytotal_40 = zeros(1,101);
ytotal_10= zeros(1,101);

for i = 20:70
   
  for j = 1:101
      
    total = total +H (i,j) ;
    
  end
end  
% printing the PMF of rows 20 to 70 and all columns within
fprintf('The total PMF between rows 20 and 70 is');
total

% PART 2

%getting CPMF for all rows of column 40
for i =1:101
    
    ytotal_40(i) = H(i,40);
    
end

%getting CPMF for all rows of column 10
for i =1:101
    
    ytotal_10(i) = H(i,10);
    
end

subplot(2,1,1);
bar(ytotal_40,'r');
axis([0,105,0,.00085]);
title('Conditional PMF for y = 40')
xlabel('Row');
ylabel('Conditional PMF');


subplot(2,1,2);
bar(ytotal_10, 'c' );
axis([0,105,0,.0000092]);
title('Conditional PMF for y = 10')
xlabel('Row');
ylabel('conditional PMF');


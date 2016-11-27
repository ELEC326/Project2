load('H.mat')

total = 0;
ytotal_40 = zeros(1,101);
ytotal_10= zeros(1,101);

for i = 20:70
   
  for j = 1:101
      
    total = total +H (i,j) ;
    
  end
end   
fprintf('The total PMF between rows 20 and 70 is');
total

for i =1:101
    
    ytotal_40(i) = H(i,40);
    
end

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


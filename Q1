clear all;
close all;
clc;
%%
%Assignment 2
%%
%Q1
%I
x=[0,1];
y=[0,1];
S=0;
for i=1:1:2
    for j=1:1:2
        if i==2
            P(j,i)=1/8;
        else if j==1
                P(j,i)=1/4;
            else
                P(j,i)=1/2;
            end
        end
    end
end


X=linspace(-2,2,21);
Y=linspace(-2,2,21);
%z=[length(X2),length(Y2)];

for X1=1:1:21
    for Y1=1:1:21
        if X1<10 || Y1<10
            z(X1,Y1)=0;
        else if X1<=16 && Y1<=16
                z(X1,Y1)=1/4;
             else if X1<=16 && Y1>16
                     z(X1,Y1)=3/4;
                 else if X1>16 && Y1<=16
                         z(X1,Y1)=3/4;
                     else
                         z(X1,Y1)=1;
                     end
                 end
            end
        end
    end
end


subplot(1,2,1)
stem3(x,y,P);
xlabel('x')
ylabel('y')
zlabel('PMF')
title('Joint PMF of X and Y')

subplot(1,2,2)
mesh(X,Y,z)
xlabel('x')
ylabel('y')
zlabel('CDF')
title('Joint CDF of X and Y')

%%
%II

%D: Dummy variable used to aplly weight on a probability

%  !! XY array holding all X and Y  !!

for n=1:1:100000
    D(n)=randi(1000);
    if D(n)<500
        XY(1,n)=0;
        XY(2,n)=1;
    else if D(n)<750
            XY(1,n)=0;
            XY(2,n)=0;
        else if D(n)<875
                XY(1,n)=1;
                XY(2,n)=0;
            else
                XY(1,n)=1;
                XY(2,n)=1;
            end
        end
    end
end

%III

%Count occurences of each value and store in vector H

H = zeros(2);

for n = 1:1:100000
    if XY(1,n)==0
        if XY(2,n)==0
            H(1,1) = H(1,1) + 1;
        else
            H(2,1) = H(2,1) + 1;
        end
    else
        if XY(2,n)==0
            H(1,2) = H(1,2) + 1;
        else
            H(2,2) = H(2,2) + 1;
        end
    end
end

H = H/100000

figure
stem3(x,y,H);
xlabel('x')
ylabel('y')
zlabel('PMF')
title('Calculated PMF of X and Y')

%When the two PDF plots are compared, it is clear that they are essentially the same, with a difference of less than 0.01 for each probability. As the number of trials approaches infinty, the estimation will approach the theoretical values.

%IV

%Calculate the marginal pdf for x and y

x_count = zeros(1,2);
y_count = zeros(1,2);

for n = 1:1:100000
    if XY(1,n) == 0
        x_count(1,1) = x_count(1,1) + 1;
    else
        x_count(1,2) = x_count(1,2) + 1;
    end
    if XY(2,n) == 0
        y_count(1,1) = y_count(1,1) + 1;
    else
        y_count(1,2) = y_count(1,2) + 1;
    end      
end

x_mpdf = x_count/100000
y_mpdf = y_count/100000

%Using the table provided, it can be determined that p_x(x) = [0.75, 0.25] for x = [0,1], and that p_y(y) = [0.375, 0.625] for y = [0, 1]. The estimated marginal pdfs are very close to the theoretical ones, with the probabilities differing by less than 0.01.  

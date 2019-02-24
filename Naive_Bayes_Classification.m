% Naive Bayes Nutrition classification without using any packages
% The Data in this program gotten from
% http://journal.binus.ac.id/index.php/commit/article/view/506
% DOI : https://doi.org/10.21512/commit.v3i1.506

clear all;close all;clc;
data = xlsread('Training.xlsx');
test = xlsread('Training.xlsx');
zero= 10^(-10);
%Importing all the data from File to variabels so it will be easier
% Each A or B indicates training Data class
A1 = data(1:5,1);
A2 = data(1:5,2);
A3 = data(1:5,3);
A4 = data(1:5,4);
A5 = data(1:5,5);

B1 = data(6:35,1);
B2 = data(6:35,2);
B3 = data(6:35,3);
B4 = data(6:35,4);
B5 = data(6:35,5);

C1 = data(36:38,1);
C2 = data(36:38,2);
C3 = data(36:38,3);
C4 = data(36:38,4);
C5 = data(36:38,5);

D1 = data(39:48,1);
D2 = data(39:48,2);
D3 = data(39:48,3);
D4 = data(39:48,4);
D5 = data(39:48,5);

E1 = data(49:51,1);
E2 = data(49:51,2);
E3 = data(49:51,3);
E4 = data(49:51,4);
E5 = data(49:51,5);

 T1 = test(1:51,1);
 T2 = test(1:51,2);
 T3 = test(1:51,3);
 T4 = test(1:51,4);
 T5 = test(1:51,5);
 
avgA11 = mean(A1);
avgA12 = mean(A2);
avgA13 = mean(A3);
avgA14 = mean(A4);
avgA15 = mean(A5);

avgB11 = mean(B1);
avgB12 = mean(B2);
avgB13 = mean(B3);
avgB14 = mean(B4);
avgB15 = mean(B5);

avgC11 = mean(C1);
avgC12 = mean(C2);
avgC13 = mean(C3);
avgC14 = mean(C4);
avgC15 = mean(C5);

avgD11 = mean(D1);
avgD12 = mean(D2);
avgD13 = mean(D3);
avgD14 = mean(D4);
avgD15 = mean(D5);

avgE11 = mean(E1);
avgE12 = mean(E2);
avgE13 = mean(E3);
avgE14 = mean(E4);
avgE15 = mean(E5);

stdA11 = std(A1);
stdA12 = std(A2);
stdA13 = std(A3);
stdA14 = std(A4);
stdA15 = std(A5);

stdB11 = std(B1);
stdB12 = std(B2);
stdB13 = std(B3);
stdB14 = std(B4);
stdB15 = std(B5);

stdC11 = std(C1);
stdC12 = std(C2);
stdC13 = std(C3);
stdC14 = std(C4);
stdC15 = std(C5);

stdD11 = std(D1);
stdD12 = std(D2);
stdD13 = std(D3);
stdD14 = std(D4);
stdD15 = std(D5);

stdE11 = std(E1);
stdE12 = std(E2);
stdE13 = std(E3);
stdE14 = std(E4);
stdE15 = std(E5);

% Naive Bayes
for i=1:51
    p(i,1) = (1/(stdA11*sqrt(2*pi))) *exp(-((T1(i)- avgA11)^2)/(2*stdA11^2)) * (1/(stdA12*sqrt(2*pi))) *exp(-((T2(i)- avgA12)^2)/(2*stdA12^2))  * (1/(stdA13*sqrt(2*pi))) *exp(-((T3(i)- avgA13)^2)/(2*stdA13^2)) *(1/(stdA14*sqrt(2*pi))) *exp(-((T4(i)- avgA14)^2)/(2*stdA14^2)) *(1/(stdA15*sqrt(2*pi))) *exp(-((T5(i)- avgA15)^2)/(2*stdA15^2)) ;
    p(i,2) = (1/(stdB11*sqrt(2*pi))) *exp(-((T1(i)- avgB11)^2)/(2*stdB11^2)) * (1/(stdB12*sqrt(2*pi))) *exp(-((T2(i)- avgB12)^2)/(2*stdB12^2))  * (1/(stdB13*sqrt(2*pi))) *exp(-((T3(i)- avgB13)^2)/(2*stdB13^2)) *(1/(stdB14*sqrt(2*pi))) *exp(-((T4(i)- avgB14)^2)/(2*stdB14^2)) *(1/(stdB15*sqrt(2*pi))) *exp(-((T5(i)- avgB15)^2)/(2*stdB15^2)) ;
    p(i,3) = (1/(stdC11*sqrt(2*pi)+zero)) *exp(-((T1(i)- avgC11)^2)/(2*stdC11^2+zero)) * (1/(stdC12*sqrt(2*pi)+zero)) *exp(-((T2(i)- avgC12)^2)/(2*stdC12^2+zero))  * (1/(stdC13*sqrt(2*pi))) *exp(-((T3(i)- avgC13)^2)/(2*stdC13^2+zero)) *(1/(stdC14*sqrt(2*pi))) *exp(-((T4(i)- avgC14)^2)/(2*stdC14^2+zero)) *(1/(stdC15*sqrt(2*pi))) *exp(-((T5(i)- avgC15)^2)/(2*stdC15^2+zero)) ;
    p(i,4) = (1/(stdD11*sqrt(2*pi))) *exp(-((T1(i)- avgD11)^2)/(2*stdD11^2)) * (1/(stdD12*sqrt(2*pi))) *exp(-((T2(i)- avgD12)^2)/(2*stdD12^2))  * (1/(stdD13*sqrt(2*pi))) *exp(-((T3(i)- avgD13)^2)/(2*stdD13^2)) *(1/(stdD14*sqrt(2*pi))) *exp(-((T4(i)- avgD14)^2)/(2*stdD14^2)) *(1/(stdD15*sqrt(2*pi))) *exp(-((T5(i)- avgD15)^2)/(2*stdD15^2)) ;
    p(i,5) = (1/(stdE11*sqrt(2*pi))) *exp(-((T1(i)- avgE11)^2)/(2*stdE11^2)) * (1/(stdE12*sqrt(2*pi))) *exp(-((T2(i)- avgE12)^2)/(2*stdE12^2))  * (1/(stdE13*sqrt(2*pi))) *exp(-((T3(i)- avgE13)^2)/(2*stdE13^2)) *(1/(stdE14*sqrt(2*pi))) *exp(-((T4(i)- avgE14)^2)/(2*stdE14^2)) *(1/(stdE15*sqrt(2*pi))) *exp(-((T5(i)- avgE15)^2)/(2*stdE15^2)) ;
end
%Prediction
for i = 1:51
    if p(i,1) > p(i,2) &&  p(i,1) > p(i,3) &&  p(i,1) > p(i,4) &&  p(i,1) > p(i,5) 
        p(i,6) = 1;
        
    elseif p(i,1) < p(i,2) &&  p(i,2) > p(i,3) &&  p(i,2) > p(i,4) &&  p(i,2) > p(i,5)
        p(i,6) = 2;
         
    elseif p(i,1) < p(i,3) && p(i,3) > p(i,2) && p(i,3) > p(i,4) && p(i,3) > p(i,5) 
        p(i,6) = 3;
        
    elseif p(i,4) > p(i,1) && p(i,4) > p(i,2) && p(i,4) > p(i,3) && p(i,4) > p(i,5)
        p(i,6) = 4;
    elseif p(i,5) > p(i,1) && p(i,5) > p(i,2) && p(i,5) > p(i,3) && p(i,5) > p(i,4)
        p(i,6) =5;
    end
end

lab2_data = [1, 0, 0, 0; 1,0, 1, 1; 1, 1, 0, 1; 1, 1, 1, 0]

THETA1 = 2*rand(3,3)-1
THETA2 = 2*rand(1,3)-1

a1 =[lab2_data(1,1:3)']

z2 = THETA1 * a1

%sigmoid
function [result] = sigmoid(x)
  result = 1.0./(1.0-exp(-x));
end

a2 = sigmoid(z2)

z3 = THETA2 * a2

h = sigmoid(z3)

#finding error

y=lab2_data(1,4)

j=(1/2)*(y-h)^2 #squRED lost COSt

error = y-h #actual vs predicted

#delta function

delta3 = (y-h)*h*(1-h)

delta2 = (THETA2'.*delta3).*(A2.*(1-A2)));
delta3*a2
delta2*a1
THETA2=THETA2-(0.01*(delta3*a2'));
THETA1=THETA1-(0.01*(delta2*a1'));

























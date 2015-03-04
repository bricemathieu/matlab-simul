function output = gi_inserter(input)
% guard interval insertion and windowing
% input: matrix of time domain OFDM signal, each row an OFDM symbol
% output: matrix of GI inserted OFDM signal, each row an OFDM symbol

Nsym = size(input,1); % number OFDM symbols
W = [0.5,ones(1,79),0.5]; % GI insertaion and windowing
output = [input(:,49:64),input,input(:,1)].*repmat(W,Nsym,1);


%http://www.mathworks.com/help/matlab/ref/repmat.html#btzavfc-2_1
%
%Create a vertical stack of four copies of A.
%
%B = repmat(A,4,1)
%B =
%
%     1     2     3     4
%     1     2     3     4
%     1     2     3     4
%     1     2     3     4
%B contains 4 copies of A in the first dimension and 1 copy in the second dimension. This result is equivalent to B = repmat(A,[4 1]).

clc;
clear all;

%%VARARGIN -> 1, 2, 3, 4. So NARGIN is 4 
calculate(1,2,3, 4);

%%VARARGOUT -> a, b, c. So NARGOUT is 3
[a, b, c] = calculate();
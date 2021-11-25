function finalcode = newhuffmandict(s,p)

if (ndims(p) ~= 2) | (min(size(p))>1) | ~isreal(p) | ~isnumeric(p)
error('O p prepei na einai arithmitiko dianusma pragmatikwn arithmwn');
end
if ~isa(s, 'cell')
    error('To alphabhto symbolwn prepei na einai ths morfhs cell array')
end
if length(p) ~= length(s)
    error('Prepei to plithos twn stoixeiwn toy dianusmatos pithanothtwn kai tou alphabhtou symbolwn na symfwnoun')
end

global finalcode
finalcode = cell(length(p),2);            
if length(p) > 1 
%p = p/sum(p);
s = sorting(s,p);                    
traversetree(s, []);                 
else
finalcode = {'1'};                   
end

function s = sorting(s,p)

while numel(s) > 2           
[p, idx] = sort(p);
p(2) = p(1) + p(2); 
p(1) = [];   
s = s(idx);         
s{2} = {s{1},s{2}}; 
s(1) = []; 
end


function traversetree(node, word)

global finalcode
if isa(node,'cell')                        
traversetree(node{1},[word 0]);        
traversetree(node{2}, [word 1]);       
else           
finalcode{node,1} = node;
%finalcode{node,2} = char('0' + word); 
finalcode{node,2} = word;    
%each Huffman codeword is represented as a row vector
end

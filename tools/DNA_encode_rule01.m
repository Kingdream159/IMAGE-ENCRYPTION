function d  =  DNA_encode_rule01(P,mn)
d   =  [];
k1  =  [];
k2  =  [];
k3  =  [];
k4  =  [];
for i = 1:mn   
    x = dec2base(uint8(P(i)),2,8);
%___      
    if x(1) == '0' && x(2) == '0';    
        k1 = 'A';
    elseif x(1) == '0' && x(2) == '1';
        k1 = 'C';  
    elseif x(1) == '1' && x(2) == '0';
        k1 = 'G';
    elseif x(1) == '1' && x(2) == '1';     
        k1 = 'T';
    end
%___
    if x(3) == '0' && x(4) == '0';    
        k2 = 'A';
    elseif x(3) == '0' && x(4) == '1';
        k2 = 'C';        
    elseif x(3) == '1' && x(4) == '0';
        k2 = 'G';
    elseif x(3) == '1' && x(4) == '1';     
        k2 = 'T';
    end
%___
    if x(5) == '0' && x(6) == '0';    
        k3 = 'A';
    elseif x(5) == '0' && x(6) == '1';
        k3 = 'C';        
    elseif x(5) == '1' && x(6) == '0';
        k3 = 'G';
    elseif x(5) == '1' && x(6) == '1';     
        k3 = 'T';
    end
%___
    if x(7) == '0' && x(8) == '0';    
        k4 = 'A';
    elseif x(7) == '0' && x(8) == '1';
        k4 = 'C';        
    elseif x(7) == '1' && x(8) == '0';
        k4 = 'G';
    elseif x(7) == '1' && x(8) == '1';     
        k4 = 'T';
    end
    d = [d k1 k2 k3 k4];
end
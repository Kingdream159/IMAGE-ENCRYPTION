% function mem_data
addpath('tools');   %用addpath把文件加入它的工作路径
addpath('images');
addpath('C_DNA');
clear
data{1,6} = [];   %data{1,6}= [];是将[]赋值给第一行第六列的数值
data{10,6} = [];
for i = 1:6          %从1开始循环到6
    switch i
        case 1
            data{1,i} = 'lena.jpg';   %为什么是 data{1,i}？是第一行到第i列么，岂不是都一样了？
            data{1,i} = 'cameraman.jpg';
        case 3
            data{1,i} = 'circuit.jpg';
        case 4
            data{1,i} = 'peppers.tiff';
        case 5
        	data{1,i} = 'barbara.tif';
        otherwise
            data{1,i} = 'aerial.png';
    end
    data{2,i} = imread(data{1,i});                          %   P
    [r,c] = size(data{2,i});  
    rc = r*c;
    data{3,i} = hyper_chaotic_system(rc);                   %   k_HC_DNA
    
    ttt = data;
    ttttt = data{3,i};
    
    data{4,i} = hyper_chaotic_DNA(data{3,i},data{2,i},'A'); %   Q_HC_DNA
    
%     data{5,i} = Encryption(data{2,i});                      %   Q_C_DNA
%     
%     data{6,i} = CDCP_chaos(rc);                             %   k_CDCP
%     data{7,i} = CDCP_encrypt(data{2,i},data{6,i},52);       %   Q_CDCP
%     
%     data{8,i} = CHC_chaos(rc);                              %   k_CHC
%     data{9,i} = uint8(CHC_encrypt(data{2,i},data{8,i},74)); % 	Q_CHC    
%____________    

    clear Q1 T key_image c r rc
end
clear i
save data_in_mem
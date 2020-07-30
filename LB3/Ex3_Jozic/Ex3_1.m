clc, clear variables, close all;
addpath('.\Petri');
petri = {};

for i = 1:7   

    n = sprintf('petri%d',i);
    [img, map] = dicomread(n);
    
    petri{i}.inf = dicominfo(n);
    petri{i}.img = img;
    petri{i}.map = map;
    
    date = petri{i}.inf.AcquisitionDate;
    YY = str2num(date(1:4));
    DD = str2num(date(5:6));
    MM = str2num(date(7:8));
    
    time = petri{i}.inf.AcquisitionTime;
    hh = str2num(time(1:2));
    mm = str2num(time(3:4));
    ss = str2num(time(5:6));
    
    timestamp = [YY DD MM hh mm ss];
    
    N(i) = sum(sum(petri{i}.img));
    
    petri{i}.timestamp = timestamp;
       
end

for i=1:6
    delta_t = etime(petri{i+1}.timestamp,petri{i}.timestamp);
    lambda(i) =  -log(N(i+1)/N(i))/delta_t;   
end

t_half = (log(2)/mean(lambda)/3600);



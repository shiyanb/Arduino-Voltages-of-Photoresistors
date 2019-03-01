%Gavin Anderson 20116948, 17GKA2
%Arsh Kochhar 20104779, 17AK126
%Shiyan Boxer 20106887, 17sb79


%configures the digital pins D3-D7. This allows them to be used and respong
%to MatLab
configurePin(a,'D3','DigitalOutput');
configurePin(a,'D4','DigitalOutput');
configurePin(a,'D5','DigitalOutput');
configurePin(a,'D6','DigitalOutput');
configurePin(a,'D7','DigitalOutput');
%configures analog pins . A0-A2. This allows the arduino to relay the light
%sensitivity information back to MatLab
configurePin(a,'A0','AnalogInput'); 
configurePin(a,'A1','AnalogInput'); 
configurePin(a,'A2','AnalogInput'); 




while(1)% Infinite While Loop
    %Variables
    d = readVoltage(a,'A0');
    b = readVoltage(a,'A1');
    c = readVoltage(a,'A2');
    %calculation for average
    avg = (d+b+c)/3;
    % set of if statments that change the amount of digit pins that are
    % displying light. The amount of digital lights turned on are a
    % representation of the average of the voltage of photo resistors.
    % Therefore while some are turned on others have to be turned off
    if avg >= 1
      writeDigitalPin(a,'D3',1);  
      writeDigitalPin(a,'D4',0);
      writeDigitalPin(a,'D5',0);
      writeDigitalPin(a,'D6',0);
      writeDigitalPin(a,'D7',0);
    end
    
    if avg >= 2
      writeDigitalPin(a,'D3',1); 
      writeDigitalPin(a,'D4',1);
      writeDigitalPin(a,'D5',0);
      writeDigitalPin(a,'D6',0);
      writeDigitalPin(a,'D7',0);
    end
    
    if avg >= 3
      writeDigitalPin(a,'D3',1);
      writeDigitalPin(a,'D4',1);
      writeDigitalPin(a,'D5',1);
      writeDigitalPin(a,'D6',0);
      writeDigitalPin(a,'D7',0);
    end
    
    if avg >= 4
      writeDigitalPin(a,'D3',1); 
      writeDigitalPin(a,'D4',1);
      writeDigitalPin(a,'D5',1);
      writeDigitalPin(a,'D6',1);
      writeDigitalPin(a,'D7',0);
    end
    
    if avg >= 5
      writeDigitalPin(a,'D3',1); 
      writeDigitalPin(a,'D4',1);
      writeDigitalPin(a,'D5',1);
      writeDigitalPin(a,'D6',1);
      writeDigitalPin(a,'D7',1);
    end
end

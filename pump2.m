 pump_1_to_9 ={
             "32-160",3,10,35,65,
         160,0.6,1.5;
             "40-160",5,15,30,60
         160,0.68,2.2;
             "50-160",8,20,28,55,
         160,0.72,3;
             "65-160",10,30,25,50
         160,0.75,4;
             "65-200",15,45,35,60
         200,0.76,5.5;
             "80-200",20,60,30,55
         200,0.78,7.5;
             "100-200",30,80,35,55
         200,0.80,11;
             "125-250",40,120,35,50
         250,0.81,15;
             "150-250",50,150,30,45
         250,0.8,18.5;
             };
         function pump_selector_ETA(Q(m^3/h) , H(m))
            if Q(m^3/h)<40 || H(m)<40
                fprintf("limited circumstances.\n");
                return;
            end
         
         for k = 1:size(pump,1)
             Q_minimum = pump{k,2};
             Q_maximum = pump{k,3};
             H_minimum = pump{k,4};
             H_maximum = pump{k,5};
             
             if Q(m^3/h)>= Q_minimum && Q(m^3/h)<= Q_maximum 
                && H(m)>= H_minimum && H(m)<= H_maximum
                 fprintf("the right pump has been found.\n");
                 fprintf("  - model:  \n , pump{k.1}");
                 fprintf("  - impeller diameter:  (m)\n , pump{k.6}");
                 fprintf("  - efficiancy:  (percent)\n , pump{k.7}*100");
                 fprintf("  - motor power:  (kW)\n , pump{k.8}");
                 break
                 
             
             
             
             
             
             
             
             
             
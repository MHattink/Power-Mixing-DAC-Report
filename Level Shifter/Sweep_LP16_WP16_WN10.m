newdata1 = importdata('Sweep_LP16_WP16_WN10.csv');

% create new variables in the base workspace from those fields.
vars = fieldnames(newdata1);
for i = 1:length(vars)
    assignin('base', vars{i}, newdata1.(vars{i}));
end

figure(1);
plot(...
  data(:,1)*1e9,data(:,2)...
  , data(:,3)*1e9,data(:,4)...
  , data(:,5)*1e9,data(:,6)...
  , data(:,7)*1e9,data(:,8));

 %out_NMOS (lP16=1e-06,wP16=3e-05,wN10=1.5e-05) X,/Vout_NMOS (lP16=1e-06,wP16=3e-05,wN10=1.5e-05) Y
legend(...
    'L_{7}=1.8um, W_{7}=30um, W_{8}=15um',...
    'L_{7}=1.8um, W_{7}=10um, W_{8}=35um',...
    'L_{7}=1.4um, W_{7}=20um, W_{8}=25um [Final config]',...
    'L_{7}=1.0um, W_{7}=30um, W_{8}=15um',...
    'Location','SouthOutside');
AXIS([0.5 1.1 -0.3 2.5]);
xlabel('Time (ns)');
ylabel('V_{OUT} (V)');

hold on;
plot(0.7871,2.051,'r.','MarkerSize',20) 
text(0.81,2.12,'V_{OUT\_NMOS} = 2.051V');

line([0.5261 0.5261],[-1 5.5],'Color','b');
line([0.6726 0.6726],[-1 5.5],'Color','b');
annotation('doublearrow',[0.84,1.75]/5,[2.25,2.25]/3.2,'Color','b')
text(0.68,1.3,'t_{r}=147ps');

line([0.7871 0.7871],[-1 5.5],'Color','b');
line([0.9206 0.9206],[-1 5.5],'Color','b');
annotation('doublearrow',[2.51,3.35]/5,[1.7,1.7]/3.2,'Color','b')
text(0.705,0.4,'t_{f}=134ps');

hold off;


shg
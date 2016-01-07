newdata1 = importdata('wp2_sweep.csv');

% create new variables in the base workspace from those fields.
vars = fieldnames(newdata1);
for i = 1:length(vars)
    assignin('base', vars{i}, newdata1.(vars{i}));
end

figure(1);
plot(data(:,15)*1e9,data(:,16),data(:,29)*1e9,data(:,30)...
  , data(:,1)*1e9,data(:,2)...
  , data(:,3)*1e9,data(:,4)...
  , data(:,5)*1e9,data(:,6)...
  , data(:,7)*1e9,data(:,8)...
  , data(:,9)*1e9,data(:,10)...
  , data(:,11)*1e9,data(:,12)...
  , data(:,13)*1e9,data(:,14));


legend('V_{in}', 'V_{in\_}','W_{M2}=30um','W_{M2}=35um','W_{M2}=40um','W_{M2}=45um',...
    'W_{M2}=50um','W_{M2}=55um','W_{M2}=60um','Location','EastOutside');
AXIS([950e-3 3050e-3 0 5.5]);
xlabel('Time (ns)');
ylabel('Voltage (V)');

text(1.147,1.3,'V_{in\_}=1.1V');
text(2.6,1.3,'V_{in}=1.1V');

 line([2.012 2.012],[0 5.5],'Color','b');
line([2.25  2.25],[0 5.5],'Color','b');
annotation('doublearrow',[2.25,2]/5,[1.5,1.5]/4.5,'Color','b');
text(2.012,1.3,'238ps');

line([2.392  2.392],[0 5.5],'Color','b');
annotation('doublearrow',[2.45,2]/5,[1.5,1.5]/3.2,'Color','b');
text(2.1,2.2,'380ps');

shg
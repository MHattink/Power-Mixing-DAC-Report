newdata1 = importdata('Sweep_LN34_WN56_WP2_VBO.csv');

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

legend(...
    'L_{3,4}=275nm, W_{5,6}=1.1um, V_{BIAS}=2.4V [Final config]',...
    'L_{3,4}=250nm, W_{5,6}=1.2um, V_{BIAS}=2.3V',...
    'L_{3,4}=275nm, W_{5,6}=1.0um, V_{BIAS}=2.7V',...
    'L_{3,4}=275nm, W_{5,6}=1.1um, V_{BIAS}=2.6V',...
    'Location','SouthOutside');
AXIS([450e-3 1050e-3 2.75 5]);
xlabel('Time (ns)');
ylabel('V_{OUT} (V)');

hold on;
plot(0.7631,3.056,'b.','MarkerSize',20) 
text(0.82,3.056,'V_{OUT}=3.056V');

line([0.7631 0.7631],[0 5.5],'Color','b');
line([0.8994  0.8994],[3.2 5.5],'Color','b');
line([0.8994  0.8994],[0 3],'Color','b');
annotation('doublearrow',[2.68,3.561]/5,[2.2,2.2]/3.2,'Color','b')
text(0.67,3.95,'T_{r}=136ps');

line([0.5109 0.5109],[0 5.5],'Color','b');
line([0.5703 0.5703],[0 5.5],'Color','b');
annotation('doublearrow',[1.05,1.43]/5,[2.5,2.5]/3.2,'Color','b')
text(0.585,4.35,'T_{f}=59ps');

hold off;

% text(1.147,1.3,'V_{in\_}=1.1V');
% text(2.6,1.3,'V_{in}=1.1V');
% 
% line([2.012 2.012],[0 5.5],'Color','b');
% line([2.25  2.25],[0 5.5],'Color','b');
% annotation('doublearrow',[2.25,2]/5,[1.5,1.5]/4.5,'Color','b');
% text(2.012,1.3,'238ps');
% 
% line([2.392  2.392],[0 5.5],'Color','b');
% annotation('doublearrow',[2.45,2]/5,[1.5,1.5]/3.2,'Color','b');
% text(2.1,2.2,'380ps');

shg
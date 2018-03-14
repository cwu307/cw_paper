%% Generate new plots for IJSC
% CW @ GTCMT 2018
clear all; clc; close all;

results_L1_r = [0.57, 0.68, 0.65, 0.442, 0.68, 0.69, 0.573, 0.78, 0.708];
results_L2_r = [0.51, 0.59, 0.57, 0.398, 0.55, 0.53, 0.511, 0.71, 0.606];
results_L1_R2 = [0.31, 0.46, 0.41, 0.18, 0.44, 0.45, 0.288, 0.6, 0.498];
results_L2_R2 = [0.25, 0.34, 0.29, 0.141, 0.25, 0.19, 0.215, 0.49, 0.354];
sys = {'Baseline', 'Designed', 'SC(LHM)', 'CAE', 'Designed + Baseline', 'SC + Baseline', 'CAE + Baseline', 'SC + Designed', 'CAE + Designed'};
sys_blank = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};
%==== settings
barwidth = 0.3;
axis_x_low = 0;
axis_x_high = 10;
axis_y_low = 0.1;
axis_y_high = 0.9;
xticklabel_angle = 45;
fontsize = 14;

%==== generate 1st figure
fig = figure('Position', [0 0 900 550]);
subplot(211);
bar(1:9, results_L1_r, barwidth, 'FaceColor', 'k');
ylabel('Corr. Coef. r');
axis([axis_x_low axis_x_high axis_y_low axis_y_high])
grid on
set(gca, 'xticklabel', sys);
xtickangle(xticklabel_angle);
title('L1 (Musicality)');
text(1:length(results_L1_r),results_L1_r,num2str(results_L1_r'),'vert','bottom','horiz','center', 'FontSize', fontsize);
set(gca,'FontSize',fontsize)


subplot(212);
bar(1:9, results_L2_r, barwidth, 'FaceColor', [0.75 0.75 0.75]);
ylabel('Corr. Coef. r');
axis([axis_x_low axis_x_high axis_y_low axis_y_high])
grid on
set(gca, 'xticklabel', sys);
xtickangle(xticklabel_angle);
title('L2 (Rhythmic Accuracy)');
text(1:length(results_L2_r),results_L2_r,num2str(results_L2_r'),'vert','bottom','horiz','center', 'FontSize', fontsize);
set(gca,'FontSize',fontsize)

set(fig, 'PaperOrientation', 'landscape');
print(fig, 'results_r.pdf', '-dpdf', '-r0');

%==== generate 2nd figure
fig = figure('Position', [0 0 900 550]);
subplot(211);
bar(1:9, results_L1_R2, barwidth, 'FaceColor', 'k');
ylabel('R^2');
axis([axis_x_low axis_x_high axis_y_low axis_y_high])
grid on
set(gca, 'xticklabel', sys);
xtickangle(xticklabel_angle);
title('L1 (Musicality)');
text(1:length(results_L1_R2),results_L1_R2,num2str(results_L1_R2'),'vert','bottom','horiz','center', 'FontSize', fontsize);
set(gca,'FontSize',fontsize)


subplot(212);
bar(1:9, results_L2_R2, barwidth, 'FaceColor', [0.75 0.75 0.75]);
ylabel('R^2');
axis([axis_x_low axis_x_high axis_y_low axis_y_high])
grid on
set(gca, 'xticklabel', sys);
xtickangle(xticklabel_angle);
title('L2 (Rhythmic Accuracy)');
text(1:length(results_L2_R2),results_L2_R2,num2str(results_L2_R2'),'vert','bottom','horiz','center', 'FontSize', fontsize);
set(gca,'FontSize',fontsize)

set(fig, 'PaperOrientation', 'landscape');
print(fig, 'results_R2.pdf', '-dpdf', '-r0');


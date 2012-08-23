MEASURES = {...
'corpus-bda-exact3-5000-2',...
'corpus-sda-21-100000-2',...
'wordnet-lesk-2',...
'wordnet-wup-2',...
'corpus-bda-exact5-5000-2',...
'def-wiktionary-1000-2',...
'wordnet-res-2',...
'corpus-lsa-tasa-2',...
'wordnet-lch-2',...
'wordnet-vector_pairs-2',...
};

ROOT = '/home/sasha/tmp/measures/';

it_num = 100; 

%%  Without plots

tic
for i = 1:length(MEASURES)    
    evaluate_measure(strcat(ROOT,MEASURES{i},'/'), it_num);
end
toc

%% Single

evaluate_measure(strcat(ROOT,'corpus-sda-21-100000-2/'), it_num);

%% With plots 

plots=1;
tic
for i = 1:length(MEASURES)
    evaluate_measure(strcat(ROOT,MEASURES{i},'/'), it_num, plots);
end
toc


%% KONVENS 2012 experiments

clc 

log_file = 'D:\work\sre\results\konvens\norm5.log';
delete(log_file); diary(log_file);

MEASURES = {...
    %'D:\work\sre\results\konvens\p-norm2-wacky\',...    
    %'D:\work\sre\results\konvens\p-norm2-pukwac\',...
    %'D:\work\sre\results\konvens\models\p-norm25-all\',...
    %'D:\work\sre\results\konvens\models\p-norm215-all\',...
    %'D:\work\sre\results\konvens\models\p-norm225-all\',...
    %'D:\work\sre\results\konvens\models\p-norm31-all\',...
    %'D:\work\sre\results\konvens\models\p-norm32-all\',...
    %'D:\work\sre\results\konvens\models\p-norm35-all\',...
    %'D:\work\sre\results\konvens\models\p-norm310-all\',...
    %'D:\work\sre\results\konvens\models\p-norm41-corpus-all\',...
    %'D:\work\sre\results\konvens\models\p-norm41-conc-all\',...
    %'D:\work\sre\results\konvens\models\p-norm41-pairs-all\',...
    %'D:\work\sre\results\konvens\models\p-norm42-corpus-all\',...
    %'D:\work\sre\results\konvens\models\p-norm42-conc-all\',...
    %'D:\work\sre\results\konvens\models\p-norm42-pairs-all\',...
    'D:\work\sre\results\konvens\models\p-norm51-corpus-all\',...
    'D:\work\sre\results\konvens\models\p-norm52-corpus-all\',...
    'D:\work\sre\results\konvens\models\p-norm51-corpus-wacky\',...
    'D:\work\sre\results\konvens\models\p-norm51-corpus-pukwac\',...
    'D:\work\sre\results\konvens\models\p-norm52-corpus-wacky\',...
    'D:\work\sre\results\konvens\models\p-norm52-corpus-pukwac\',...
};

for i=1:length(MEASURES)
    evaluate_measure(MEASURES{i}); 
end

diary off

%%
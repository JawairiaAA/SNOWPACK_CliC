% change time format in SMET file

%keyboard
fid =fopen('input/smet_pt_002.smet');
C=textscan(fid,'%s','delimiter','\n');
fclose(fid);
filetext=(C{1,1});
%%
for k=20:numel(filetext)
    %tmp = regexp(filetext{1,1}(k),'\s'); % find empty spaces
    %filetext{k,1}(12) = 'T'; % substitute empty spaces by ','
    %filetext{k,1}(1) = ''; % substitute empty spaces by ','
    %filetext{k,1}(20) = ' '; % substitute empty spaces by ','
end
%%
% print new file
fName = 'input/9400ft.smet';
fid = fopen(fName,'w');            % Open the file
for k=1:numel(filetext)
  fprintf(fid,'%s\r\n',filetext{k,1});
end
fclose(fid);

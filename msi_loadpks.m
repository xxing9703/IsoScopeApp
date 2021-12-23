function pks=msi_loadpks(app,fname)
[~,~,B]=xlsread(fname);
header=B(1,1:end);
dt=B(2:end,:);

set(app.UITable,'ColumnName',header);
set(app.UITable,'data',dt);

T=readtable(fname);
S=table2struct(T);
pks.header=header;
pks.data=dt;
pks.sdata=S; %structure data
pks.pkid=1;
pks.ordering=1:size(T,1);
pks.corref=zeros(size(dt,1),size(dt,1));
pks.filename=fname;



function update_roitable(uitable,roigrp)
%dt=uitable.Data;
if isempty(roigrp)
    dt=[];
else
for i=1:length(roigrp)
   dt{i,1}=logical(roigrp(i).plt.Visible);
   dt{i,2}=roigrp(i).tag;
   dt{i,3}=roigrp(i).pen;    
   dt{i,4}=roigrp(i).size;
   dt{i,5}=roigrp(i).sig;
   dt{i,6}=roigrp(i).coverage;
   dt{i,7}=roigrp(i).note;   
end
end
uitable.Data=dt;
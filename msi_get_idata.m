%input required: msi, mzpk
%output: idata and errdata 1-d signal array at mzpk specs.
function [msi,idata]=msi_get_idata(msi) 
          pk=msi.pk;
          n=length(msi.data); 
          idata=zeros(n,1); 
          errdata=zeros(n,1);
          tic
            mz=pk.mz_;
            range=pk.range_;
            
            for i=1:n 
                a=msi.data(i).peak_mz;
                b=msi.data(i).peak_sig;                
                [sig,index]=ms2sig(a,b,range);               
               if sig>0
                idata(i)=sig;
                errdata(i)=(a(index)-mz)/mz*1e6;
               else
                idata(i)=0;     % no signal
                errdata(i)=-99;   % no signal, error N/A             
               end
            end 
         toc         
        msi.idata=idata;
        msi.errdata=errdata;
        msi.coverage=length(find(msi.idata>0))/length(msi.idata);
     end
function msi=msi_get_TIC(msi)
            dt=msi.data;
            for i=1:length(dt)
                TIC(i)= double(sum(dt(i).peak_sig));
            end
            msi.TIC=TIC'; 
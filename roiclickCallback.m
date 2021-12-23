function roiclickCallback(~,evt)      
      if strcmp(evt.SelectionType,'double')
         uiresume(gcbf);
      end
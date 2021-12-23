app.fig = uifigure();
app.UIAxes = uiaxes(app.fig); 
h = zoom(app.UIAxes);
h.ActionPreCallback = @myprecallback;
h.ActionPostCallback = @mypostcallback;
h.Enable = 'on';
function myprecallback(obj,evd)
    disp('A zoom is about to occur.');
end
function mypostcallback(obj,evd)
    disp('A zoom has occurred.');
end
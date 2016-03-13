%{ 
 Plot randomly 5 times.
 plot(rand(4))
 F = getframe;
%}

%{
Z = peaks;
surf(Z)
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 40;
F(loops) = struct('cdata',[],'colormap',[]);
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    F(j) = getframe(gcf);
end

fig = figure;
movie(fig,F,2)
%}

%  Plotting matricse on the same plot
close all
c=-2:0.1:2;
figure('position', [0, 0, 1500, 1000])  % left, bottom, width, height
subplot(1,5,1)
plot(c,c);
subplot(1,5,2)
plot(c,c.^2)

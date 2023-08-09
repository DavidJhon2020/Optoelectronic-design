function my_plot( x,y,r )
theta=0:0.1:2*pi;
Circle1=x+r*cos(theta);
Circle2=y+r*sin(theta);
c=[123,14,52];
plot(x,y,'r.','linewidth',5);
plot(Circle1,Circle2,'c','linewidth',1);
end


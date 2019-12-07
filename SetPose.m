function SetPose(q,posi,ref,fcla)
global th uLINK

global pos pl pr 

a=find(q);
for i=1:length(a)
    th(a(i))=q(a(i))*pi/180;
end

    pos=posi;
    wholebody;
  
 
 %%%%%%%%%%%%%%%%%%%»­µØ°å%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
  shape=[1200 400 20];
  com=[0 00 -10];
  Draw_box(shape,com);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
%set (gcf,'Position',[500,200,800,800], 'color','w')   
axis([-1000,1000,-1000,1000,-500,1500]);
 view(0,0);
xlabel('X/mm');
ylabel('Y/mm'); 
zlabel('Z/mm'); 
set(gca,'Fontsize',15)

wholebody;
DrawAllJoints(2);

% %%%%%%%%%%%Â¼ÊÓÆµ%%%%%%%%%%%%%%%%
% global frame;
% global writerObj
% 
% frame=getframe; 
% frame.cdata = imresize(frame.cdata, [776 814]);
% writeVideo(writerObj,frame);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
drawnow;
%   pause
if(fcla) 
    cla; 
end
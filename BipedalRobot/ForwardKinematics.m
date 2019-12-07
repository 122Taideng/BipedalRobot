function ForwardKinematics(j)
global uLINK;

if j == 0 return; end
if j ~= 1
    mom = uLINK(j).mother;
   
    uLINK(j).p = uLINK(mom).R * uLINK(j).b + uLINK(mom).p;
    
    uLINK(j).R = uLINK(mom).R * Rodrigues(uLINK(j).a, uLINK(j).q);
     uLINK(j).c = uLINK(j).R * uLINK(j).c + uLINK(j).p;
end
ForwardKinematics(uLINK(j).sister);
ForwardKinematics(uLINK(j).child);

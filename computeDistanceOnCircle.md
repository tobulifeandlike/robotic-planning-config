# robotic-planning-config
use Matlab to realize configuration space two points' distance  calculation
function d = computeDistanceOnCircle(theta1, theta2)
    if mod(theta2,2*pi)>=mod(theta1,2*pi)
      %initially we are not sure which angle is larger, so we need to set a comparison condition to confirm which angle is smaller
      dcc=mod(theta2,2*pi)-mod(theta1,2*pi); %calculate counter-clockwise distance at first
    elseif mod(theta2,2*pi)<mod(theta1,2*pi)
      dcc=mod(theta1,2*pi)-mod(theta2,2*pi);
    end
    dc=2*pi-dcc;%based on the relationship between dc and dcc, we can get the clockwise distance dc
    d=min(dcc,dc);%the result is the smaller value between dcc and dc
end

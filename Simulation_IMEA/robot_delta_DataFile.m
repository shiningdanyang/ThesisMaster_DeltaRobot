
% Simscape(TM) Multibody(TM) version: 5.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(33).translation = [0.0 0.0 0.0];
smiData.RigidTransform(33).angle = 0.0;
smiData.RigidTransform(33).axis = [0.0 0.0 0.0];
smiData.RigidTransform(33).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 0];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[fixed_platform-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 0 0];  % mm
smiData.RigidTransform(2).angle = 0;  % rad
smiData.RigidTransform(2).axis = [0 0 0];
smiData.RigidTransform(2).ID = 'F[fixed_platform-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-93.352540378442583 38.308657048914519 0];  % mm
smiData.RigidTransform(3).angle = 2.41885840577641;  % rad
smiData.RigidTransform(3).axis = [-0.65465367070798253 -0.37796447300920866 -0.65465367070798264];
smiData.RigidTransform(3).ID = 'B[fixed_platform-1:-:uper_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [1.6875389974302379e-14 4.2028602820209926e-12 13.500000000000053];  % mm
smiData.RigidTransform(4).angle = 3.141592653589786;  % rad
smiData.RigidTransform(4).axis = [-1 1.757411074252908e-31 -4.9065389333855548e-17];
smiData.RigidTransform(4).ID = 'F[fixed_platform-1:-:uper_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [13.499999999999408 -99.999999999993562 0];  % mm
smiData.RigidTransform(5).angle = 2.0943951023932548;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918958632 -0.57735026918964549 0.57735026918964549];
smiData.RigidTransform(5).ID = 'B[fixed_platform-1:-:uper_leg-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-7.1054273576010019e-15 1.900701818158268e-12 13.500000000000025];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897865;  % rad
smiData.RigidTransform(6).axis = [-1 -4.0767658740918579e-44 1.1845239529959255e-29];
smiData.RigidTransform(6).ID = 'F[fixed_platform-1:-:uper_leg-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [79.852540378444019 61.691342951089744 0];  % mm
smiData.RigidTransform(7).angle = 2.4188584057763762;  % rad
smiData.RigidTransform(7).axis = [0.65465367070797686 -0.37796447300922814 0.65465367070797686];
smiData.RigidTransform(7).ID = 'B[fixed_platform-1:-:uper_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-1.865174681370263e-14 -6.7839067696695565e-12 13.500000000000055];  % mm
smiData.RigidTransform(8).angle = 3.141592653589786;  % rad
smiData.RigidTransform(8).axis = [-1 1.0660022242178584e-31 -2.9439233600307609e-17];
smiData.RigidTransform(8).ID = 'F[fixed_platform-1:-:uper_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-50.999999999999993 -50 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'B[moving_platform-1:-:lower_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [146.99440125713093 1.7349754023776853 -3.3576221946992035];  % mm
smiData.RigidTransform(10).angle = 0;  % rad
smiData.RigidTransform(10).axis = [0 0 0];
smiData.RigidTransform(10).ID = 'F[moving_platform-1:-:lower_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [51.000000000000007 -50 0];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = 'B[moving_platform-1:-:lower_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [146.99440125711908 1.7349754023739621 -3.3576221947417793];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = 'F[moving_platform-1:-:lower_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [-17.801270189221913 69.167295593006358 0];  % mm
smiData.RigidTransform(13).angle = 0;  % rad
smiData.RigidTransform(13).axis = [0 0 0];
smiData.RigidTransform(13).ID = 'B[moving_platform-1:-:lower_leg-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [146.99440125713289 1.7349754023921662 -3.3576221947384965];  % mm
smiData.RigidTransform(14).angle = 0;  % rad
smiData.RigidTransform(14).axis = [0 0 0];
smiData.RigidTransform(14).ID = 'F[moving_platform-1:-:lower_leg-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [-68.80127018922191 -19.167295593006379 0];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = 'B[moving_platform-1:-:lower_leg-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [146.994401257139 1.7349754023805417 -3.3576221947018041];  % mm
smiData.RigidTransform(16).angle = 0;  % rad
smiData.RigidTransform(16).axis = [0 0 0];
smiData.RigidTransform(16).ID = 'F[moving_platform-1:-:lower_leg-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [68.801270189221938 -19.167295593006365 0];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = 'B[moving_platform-1:-:lower_leg-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [146.99440125708469 1.7349754023748574 -3.3576221947263889];  % mm
smiData.RigidTransform(18).angle = 0;  % rad
smiData.RigidTransform(18).axis = [0 0 0];
smiData.RigidTransform(18).ID = 'F[moving_platform-1:-:lower_leg-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [17.801270189221928 69.167295593006372 0];  % mm
smiData.RigidTransform(19).angle = 0;  % rad
smiData.RigidTransform(19).axis = [0 0 0];
smiData.RigidTransform(19).ID = 'B[moving_platform-1:-:lower_leg-7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [146.99440125708492 1.7349754023906954 -3.3576221947140255];  % mm
smiData.RigidTransform(20).angle = 0;  % rad
smiData.RigidTransform(20).axis = [0 0 0];
smiData.RigidTransform(20).ID = 'F[moving_platform-1:-:lower_leg-7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [199.99999999999994 0 -51.000000000000007];  % mm
smiData.RigidTransform(21).angle = 0;  % rad
smiData.RigidTransform(21).axis = [0 0 0];
smiData.RigidTransform(21).ID = 'B[uper_leg-1:-:lower_leg-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [-149.00554066902586 1.7350627758931978 -3.3576221947141818];  % mm
smiData.RigidTransform(22).angle = 0;  % rad
smiData.RigidTransform(22).axis = [0 0 0];
smiData.RigidTransform(22).ID = 'F[uper_leg-1:-:lower_leg-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [200 0 51.000000000000014];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = 'B[uper_leg-1:-:lower_leg-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-149.00554066902373 1.7350627758892898 -3.3576221947249394];  % mm
smiData.RigidTransform(24).angle = 0;  % rad
smiData.RigidTransform(24).axis = [0 0 0];
smiData.RigidTransform(24).ID = 'F[uper_leg-1:-:lower_leg-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [200.00000000000003 0 -51.000000000000007];  % mm
smiData.RigidTransform(25).angle = 0;  % rad
smiData.RigidTransform(25).axis = [0 0 0];
smiData.RigidTransform(25).ID = 'B[uper_leg-2:-:lower_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-149.00554066902282 1.7350627758922741 -3.3576221947264315];  % mm
smiData.RigidTransform(26).angle = 0;  % rad
smiData.RigidTransform(26).axis = [0 0 0];
smiData.RigidTransform(26).ID = 'F[uper_leg-2:-:lower_leg-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [199.99999999999997 0 50.999999999999993];  % mm
smiData.RigidTransform(27).angle = 0;  % rad
smiData.RigidTransform(27).axis = [0 0 0];
smiData.RigidTransform(27).ID = 'B[uper_leg-2:-:lower_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [-149.00554066902541 1.7350627758903556 -3.357622194712647];  % mm
smiData.RigidTransform(28).angle = 0;  % rad
smiData.RigidTransform(28).axis = [0 0 0];
smiData.RigidTransform(28).ID = 'F[uper_leg-2:-:lower_leg-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [200.00000000000006 0 -50.999999999999943];  % mm
smiData.RigidTransform(29).angle = 0;  % rad
smiData.RigidTransform(29).axis = [0 0 0];
smiData.RigidTransform(29).ID = 'B[uper_leg-3:-:lower_leg-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [-149.00554066902163 1.7350627758875348 -3.3576221947182461];  % mm
smiData.RigidTransform(30).angle = 0;  % rad
smiData.RigidTransform(30).axis = [0 0 0];
smiData.RigidTransform(30).ID = 'F[uper_leg-3:-:lower_leg-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [200.00000000000006 0 51.00000000000005];  % mm
smiData.RigidTransform(31).angle = 0;  % rad
smiData.RigidTransform(31).axis = [0 0 0];
smiData.RigidTransform(31).ID = 'B[uper_leg-3:-:lower_leg-7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-149.00554066902112 1.7350627758950026 -3.357622194720804];  % mm
smiData.RigidTransform(32).angle = 0;  % rad
smiData.RigidTransform(32).axis = [0 0 0];
smiData.RigidTransform(32).ID = 'F[uper_leg-3:-:lower_leg-7]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [0 0 0];  % mm
smiData.RigidTransform(33).angle = 0;  % rad
smiData.RigidTransform(33).axis = [0 0 0];
smiData.RigidTransform(33).ID = 'RootGround[fixed_platform-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 2.7679251421757871;  % kg
smiData.Solid(1).CoM = [-1.0999606394160322e-06 9.5749285442081882e-08 18.88936211834729];  % mm
smiData.Solid(1).MoI = [22943.990974753633 22943.990813552078 42315.951256193446];  % kg*mm^2
smiData.Solid(1).PoI = [5.0418381763398662e-06 -5.7880311153213175e-05 0.00013611034592160912];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'fixed_platform*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.33926999999999996;  % kg
smiData.Solid(2).CoM = [-0.93235964153514939 1.7350186475722689 -1.4637061508061888];  % mm
smiData.Solid(2).MoI = [19.177226511092066 2555.2975657230331 2556.8788318255433];  % kg*mm^2
smiData.Solid(2).PoI = [1.7929856282039071e-07 -0.011380142526926184 -1.0924838392590806e-05];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'lower_leg*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.38277999999999995;  % kg
smiData.Solid(3).CoM = [123.68598596111065 0.033360662496122837 4.5637950407373553e-05];  % mm
smiData.Solid(3).MoI = [135.7658081252321 2305.1000700858849 2227.7242101690281];  % kg*mm^2
smiData.Solid(3).PoI = [-8.7376907710877991e-05 0.0020394046499563325 -0.017086977300738795];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'uper_leg*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.75751000000000002;  % kg
smiData.Solid(4).CoM = [-0.30804090045439292 0.2950126761607636 -6.2653656144112588e-07];  % mm
smiData.Solid(4).MoI = [1009.2755498795957 1009.2755948226713 1980.5736013713827];  % kg*mm^2
smiData.Solid(4).PoI = [1.9797447162879804e-05 4.0518658752042153e-05 5.5512414555902159e-05];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'moving_platform*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -89.999999999999588;  % deg
smiData.RevoluteJoint(1).ID = '[fixed_platform-1:-:uper_leg-1]';

smiData.RevoluteJoint(2).Rz.Pos = -179.99999999999963;  % deg
smiData.RevoluteJoint(2).ID = '[fixed_platform-1:-:uper_leg-2]';

smiData.RevoluteJoint(3).Rz.Pos = -89.999999999999588;  % deg
smiData.RevoluteJoint(3).ID = '[fixed_platform-1:-:uper_leg-3]';


%Initialize the SphericalJoint structure array by filling in null values.
smiData.SphericalJoint(12).S.Pos.Angle = 0.0;
smiData.SphericalJoint(12).S.Pos.Axis = [0.0 0.0 0.0];
smiData.SphericalJoint(12).ID = '';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.SphericalJoint(1).S.Pos.Angle = 102.63386370400838;  % deg
smiData.SphericalJoint(1).S.Pos.Axis = [0.42363542757970718 0.7864815936028543 0.44942154757340391];
smiData.SphericalJoint(1).ID = '[moving_platform-1:-:lower_leg-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.SphericalJoint(2).S.Pos.Angle = 141.44706889167736;  % deg
smiData.SphericalJoint(2).S.Pos.Axis = [-0.6624523263440163 -0.37225387360450063 0.6500645882586169];
smiData.SphericalJoint(2).ID = '[moving_platform-1:-:lower_leg-3]';

smiData.SphericalJoint(3).S.Pos.Angle = 103.89078765011557;  % deg
smiData.SphericalJoint(3).S.Pos.Axis = [0.88511719861928728 0.02618889490493144 -0.46463069904172671];
smiData.SphericalJoint(3).ID = '[moving_platform-1:-:lower_leg-4]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.SphericalJoint(4).S.Pos.Angle = 90.094673382745682;  % deg
smiData.SphericalJoint(4).S.Pos.Axis = [-0.85550184498796233 0.51737185032231547 0.021046655702420015];
smiData.SphericalJoint(4).ID = '[moving_platform-1:-:lower_leg-5]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.SphericalJoint(5).S.Pos.Angle = 178.67847850301879;  % deg
smiData.SphericalJoint(5).S.Pos.Axis = [-0.36628475928755366 0.59895863479812705 0.71209832812219331];
smiData.SphericalJoint(5).ID = '[moving_platform-1:-:lower_leg-6]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.SphericalJoint(6).S.Pos.Angle = 137.01776396678136;  % deg
smiData.SphericalJoint(6).S.Pos.Axis = [0.0084870975469802674 0.77160604057501025 -0.63604409227928826];
smiData.SphericalJoint(6).ID = '[moving_platform-1:-:lower_leg-7]';

smiData.SphericalJoint(7).S.Pos.Angle = 147.63301383436556;  % deg
smiData.SphericalJoint(7).S.Pos.Axis = [-0.0047494813822371255 -0.016363025482362365 0.99985483637559269];
smiData.SphericalJoint(7).ID = '[uper_leg-1:-:lower_leg-4]';

smiData.SphericalJoint(8).S.Pos.Angle = 179.97714406769501;  % deg
smiData.SphericalJoint(8).S.Pos.Axis = [0.27875197251191247 0.96036288225756494 0.00068717003740857425];
smiData.SphericalJoint(8).ID = '[uper_leg-1:-:lower_leg-5]';

smiData.SphericalJoint(9).S.Pos.Angle = 147.63294955165762;  % deg
smiData.SphericalJoint(9).S.Pos.Axis = [-0.0047150795366004816 -0.016244503430992072 0.99985693183237179];
smiData.SphericalJoint(9).ID = '[uper_leg-2:-:lower_leg-1]';

smiData.SphericalJoint(10).S.Pos.Angle = 179.45201347459854;  % deg
smiData.SphericalJoint(10).S.Pos.Axis = [0.27871420326395924 0.96023275875196945 0.016475494484798139];
smiData.SphericalJoint(10).ID = '[uper_leg-2:-:lower_leg-3]';

smiData.SphericalJoint(11).S.Pos.Angle = 147.62975248441668;  % deg
smiData.SphericalJoint(11).S.Pos.Axis = [-0.0024571354592920649 -0.0084653811434148782 0.99996114914902134];
smiData.SphericalJoint(11).ID = '[uper_leg-3:-:lower_leg-6]';

smiData.SphericalJoint(12).S.Pos.Angle = 179.41261296371832;  % deg
smiData.SphericalJoint(12).S.Pos.Axis = [0.27870856640987174 0.96021333852907165 0.01766011100216509];
smiData.SphericalJoint(12).ID = '[uper_leg-3:-:lower_leg-7]';


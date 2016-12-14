%% TODO and stuff
% Felk??lla, det tar olika tid att sl??ppa cylindern ur startpos. V??rdena varierar ganska konstant.;
%kortare str??cka = mindre tid f??r acceleration och felfortplanting => j??mnare m??tserie?;

% Used units: mm, s, g;

% Meas(Cylinder,banlaengd, banhoejd)
% Cylinder: R <=> Cylindernr 1 osv...
% Banlaengd: 1700 <=> siffra 3, 1100 <=> siffra 2, 600 <=> siffra 1
% Banhoejd: Hoejd 1 <=> siffra 1, Hoejd 2 <=> siffra 2, Hoejd 3 <=> siffra 3

% TODO!

%Want to linearise and find the exponents, how?
    % -Is this possible without isolating singular parameters?
    % -
%Want to stabelise the exponents, how?
    % -I'm gonna need explaining here, lots of it!
%Want to know what I've done afterwards!!
%Maybe calc some kind of error/deviation, how?
    % -Explain what this error actually is!

%% Data
%************************************ R **********************
clear Meas
Meas(15,3,3)=struct();

Hfix=20.5;                    
Hvar=[8 12.5 17];
Hwidth=90;
angle=atan((Hfix-Hvar)./Hwidth);


Meas(1,3,1).Width=150;
Meas(1,3,1).Diameter=68;
Meas(1,3,1).InnerDiam=0;
Meas(1,3,1).Mass=4275;
Meas(1,3,1).LengthTrack=1700;
Meas(1,3,1).HeightTrack=1;
Meas(1,3,1).Times=[2.03 2.10 2.03 2.10 2.02];

Meas(1,3,2).Width=150;
Meas(1,3,2).Diameter=68;
Meas(1,3,2).InnerDiam=0;
Meas(1,3,2).Mass=4275;
Meas(1,3,2).LengthTrack=1700;
Meas(1,3,2).HeightTrack=2;
Meas(1,3,2).Times=[2.53 2.54 2.56 2.61 2.56];

Meas(1,3,3).Width=150;
Meas(1,3,3).Diameter=68;
Meas(1,3,3).InnerDiam=0;
Meas(1,3,3).Mass=4275;
Meas(1,3,3).LengthTrack=1700;
Meas(1,3,3).HeightTrack=3;
Meas(1,3,3).Times=[3.92 3.95 3.90 3.97 3.89];

Meas(1,2,1).Width=150;
Meas(1,2,1).Diameter=68;
Meas(1,2,1).InnerDiam=0;
Meas(1,2,1).Mass=4275;
Meas(1,2,1).LengthTrack=1100;
Meas(1,2,1).HeightTrack=1;
Meas(1,2,1).Times=[1.67 1.70 1.75 1.65 1.65];

Meas(1,2,2).Width=150;
Meas(1,2,2).Diameter=68;
Meas(1,2,2).InnerDiam=0;
Meas(1,2,2).Mass=4275;
Meas(1,2,2).LengthTrack=1100;
Meas(1,2,2).HeightTrack=2;
Meas(1,2,2).Times=[2.06 2.05 2.05 2.06 2.08];

Meas(1,2,3).Width=150;
Meas(1,2,3).Diameter=68;
Meas(1,2,3).InnerDiam=0;
Meas(1,2,3).Mass=4275;
Meas(1,2,3).LengthTrack=1100;
Meas(1,2,3).HeightTrack=3;
Meas(1,2,3).Times=[3.15 3.12 3.15 3.14 3.14];

Meas(1,1,1).Width=150;
Meas(1,1,1).Diameter=68;
Meas(1,1,1).InnerDiam=0;
Meas(1,1,1).Mass=4275;
Meas(1,1,1).LengthTrack=600;
Meas(1,1,1).HeightTrack=1;
Meas(1,1,1).Times=[1.23 1.23 1.23 1.23 1.23];

Meas(1,1,2).Width=150;
Meas(1,1,2).Diameter=68;
Meas(1,1,2).InnerDiam=0;
Meas(1,1,2).Mass=4275;
Meas(1,1,2).LengthTrack=600;
Meas(1,1,2).HeightTrack=2;
Meas(1,1,2).Times=[1.54 1.54 1.57 1.54 1.57];

Meas(1,1,3).Width=150;
Meas(1,1,3).Diameter=68;
Meas(1,1,3).InnerDiam=0;
Meas(1,1,3).Mass=4275;
Meas(1,1,3).LengthTrack=600;
Meas(1,1,3).HeightTrack=3;
Meas(1,1,3).Times=[2.37 2.37 2.39 2.35 2.37 ];
%**************************************** Q*******************************
Meas(2,1,1).Width=150;
Meas(2,1,1).Diameter=68;
Meas(2,1,1).InnerDiam=66;
Meas(2,1,1).Mass=1366;
Meas(2,1,1).LengthTrack=600;
Meas(2,1,1).HeightTrack=1;
Meas(2,1,1).Times=[1.36 1.43 1.39 1.36 1.34];

Meas(2,1,2).Width=150;
Meas(2,1,2).Diameter=68;
Meas(2,1,2).InnerDiam=66;
Meas(2,1,2).Mass=1366;
Meas(2,1,2).LengthTrack=600;
Meas(2,1,2).HeightTrack=2;
Meas(2,1,2).Times=[1.71 1.70 1.67 1.70 1.67];

Meas(2,1,3).Width=150;
Meas(2,1,3).Diameter=68;
Meas(2,1,3).InnerDiam=66;
Meas(2,1,3).Mass=1366;
Meas(2,1,3).LengthTrack=600;
Meas(2,1,3).HeightTrack=3;
Meas(2,1,3).Times=[2.61 2.59 2.61 2.61 2.59];

Meas(2,2,1).Width=150;
Meas(2,2,1).Diameter=68;
Meas(2,2,1).InnerDiam=66;
Meas(2,2,1).Mass=1366;
Meas(2,2,1).LengthTrack=1100;
Meas(2,2,1).HeightTrack=1;
Meas(2,2,1).Times=[1.82 1.82 1.79 1.86 1.79 ];

Meas(2,2,2).Width=150;
Meas(2,2,2).Diameter=68;
Meas(2,2,2).InnerDiam=66;
Meas(2,2,2).Mass=1366;
Meas(2,2,2).LengthTrack=1100;
Meas(2,2,2).HeightTrack=2;
Meas(2,2,2).Times=[2.20 2.18 2.23 2.15 2.19];

Meas(2,2,3).Width=150;
Meas(2,2,3).Diameter=68;
Meas(2,2,3).InnerDiam=66;
Meas(2,2,3).Mass=1366;
Meas(2,2,3).LengthTrack=1100;
Meas(2,2,3).HeightTrack=3;
Meas(2,2,3).Times=[3.50 3.55 3.47 3.51 3.50];

Meas(2,3,3).Width=150;
Meas(2,3,3).Diameter=68;
Meas(2,3,3).InnerDiam=66;
Meas(2,3,3).Mass=1366;
Meas(2,3,3).LengthTrack=1700;
Meas(2,3,3).HeightTrack=3;
Meas(2,3,3).Times=[4.30 4.32 4.30 4.25 4.23];

Meas(2,3,2).Width=150;
Meas(2,3,2).Diameter=68;
Meas(2,3,2).InnerDiam=66;
Meas(2,3,2).Mass=1366;
Meas(2,3,2).LengthTrack=1700;
Meas(2,3,2).HeightTrack=2;
Meas(2,3,2).Times=[2.83 2.80 2.87 2.76 2.82];

Meas(2,3,1).Width=150;
Meas(2,3,1).Diameter=68;
Meas(2,3,1).InnerDiam=66;
Meas(2,3,1).Mass=1366;
Meas(2,3,1).LengthTrack=1700;
Meas(2,3,1).HeightTrack=1;
Meas(2,3,1).Times=[2.24 2.21 2.26 2.19 2.27];
%*********************************** P *********************************************
Meas(3,3,1).Width=151;
Meas(3,3,1).Diameter=57;
Meas(3,3,1).Mass=2884;
Meas(3,3,1).InnerDiam=0;
Meas(3,3,1).LengthTrack=1700;
Meas(3,3,1).HeightTrack=1;
Meas(3,3,1).Times=[2.02 2.08 2.06 2.03 2.06];

Meas(3,3,2).Width=151;
Meas(3,3,2).Diameter=57;
Meas(3,3,2).Mass=2884;
Meas(3,3,2).InnerDiam=0;
Meas(3,3,2).LengthTrack=1700;
Meas(3,3,2).HeightTrack=2;
Meas(3,3,2).Times=[2.53 2.62 2.59 2.51 2.53];

Meas(3,3,3).Width=151;
Meas(3,3,3).Diameter=57;
Meas(3,3,3).Mass=2884;
Meas(3,3,3).InnerDiam=0;
Meas(3,3,3).LengthTrack=1700;
Meas(3,3,3).HeightTrack=3;
Meas(3,3,3).Times=[3.87 3.89 3.89 3.87 3.87];

Meas(3,2,3).Width=151;
Meas(3,2,3).Diameter=57;
Meas(3,2,3).Mass=2884;
Meas(3,2,3).InnerDiam=0;
Meas(3,2,3).LengthTrack=1100;
Meas(3,2,3).HeightTrack=3;
Meas(3,2,3).Times=[3.07 3.14 3.07 3.15 3.15];

Meas(3,2,2).Width=151;
Meas(3,2,2).Diameter=57;
Meas(3,2,2).Mass=2884;
Meas(3,2,2).InnerDiam=0;
Meas(3,2,2).LengthTrack=1100;
Meas(3,2,2).HeightTrack=2;
Meas(3,2,2).Times=[2.05 2.02 2.03 2.05 2.00];

Meas(3,2,1).Width=151;
Meas(3,2,1).Diameter=57;
Meas(3,2,1).Mass=2884;
Meas(3,2,1).InnerDiam=0;
Meas(3,2,1).LengthTrack=1100;
Meas(3,2,1).HeightTrack=1;
Meas(3,2,1).Times=[1.62 1.65 1.65 1.67 1.63];

Meas(3,1,1).Width=151;
Meas(3,1,1).Diameter=57;
Meas(3,1,1).Mass=2884;
Meas(3,1,1).InnerDiam=0;
Meas(3,1,1).LengthTrack=600;
Meas(3,1,1).HeightTrack=1;
Meas(3,1,1).Times=[1.25 1.28 1.22 1.22 1.28];

Meas(3,1,2).Width=151;
Meas(3,1,2).Diameter=57;
Meas(3,1,2).Mass=2884;
Meas(3,1,2).InnerDiam=0;
Meas(3,1,2).LengthTrack=600;
Meas(3,1,2).HeightTrack=2;
Meas(3,1,2).Times=[1.52 1.60 1.55 1.54 1.52];

Meas(3,1,3).Width=151;
Meas(3,1,3).Diameter=57;
Meas(3,1,3).Mass=2884;
Meas(3,1,3).InnerDiam=0;
Meas(3,1,3).LengthTrack=600;
Meas(3,1,3).HeightTrack=3;
Meas(3,1,3).Times=[2.35 2.32 2.32 2.35 2.39];
%************************************************** O *********************************
Meas(4,1,3).Width=148;
Meas(4,1,3).Diameter=57;
Meas(4,1,3).Mass=1661;
Meas(4,1,3).InnerDiam=36;
Meas(4,1,3).LengthTrack=600;
Meas(4,1,3).HeightTrack=3;
Meas(4,1,3).Times=[2.51 2.48 2.56 2.51 2.50];

Meas(4,1,2).Width=148;
Meas(4,1,2).Diameter=57;
Meas(4,1,2).Mass=1661;
Meas(4,1,2).InnerDiam=36;
Meas(4,1,2).LengthTrack=600;
Meas(4,1,2).HeightTrack=2;
Meas(4,1,2).Times=[1.63 1.63 1.63 1.63 1.63];

Meas(4,1,1).Width=148;
Meas(4,1,1).Diameter=57;
Meas(4,1,1).Mass=1661;
Meas(4,1,1).InnerDiam=36;
Meas(4,1,1).LengthTrack=600;
Meas(4,1,1).HeightTrack=1;
Meas(4,1,1).Times=[1.36 1.30 1.30 1.31 1.30];

Meas(4,2,1).Width=148;
Meas(4,2,1).Diameter=57;
Meas(4,2,1).Mass=1661;
Meas(4,2,1).InnerDiam=36;
Meas(4,2,1).LengthTrack=1100;
Meas(4,2,1).HeightTrack=1;
Meas(4,2,1).Times=[1.75 1.75 1.75 1.78 1.78];

Meas(4,2,2).Width=148;
Meas(4,2,2).Diameter=57;
Meas(4,2,2).Mass=1661;
Meas(4,2,2).InnerDiam=36;
Meas(4,2,2).LengthTrack=1100;
Meas(4,2,2).HeightTrack=2;
Meas(4,2,2).Times=[2.18 2.18 2.23 2.19 2.21];

Meas(4,2,3).Width=148;
Meas(4,2,3).Diameter=57;
Meas(4,2,3).Mass=1661;
Meas(4,2,3).InnerDiam=36;
Meas(4,2,3).LengthTrack=1100;
Meas(4,2,3).HeightTrack=3;
Meas(4,2,3).Times=[3.23 3.33 3.28 3.33 3.38];

Meas(4,3,3).Width=148;
Meas(4,3,3).Diameter=57;
Meas(4,3,3).Mass=1661;
Meas(4,3,3).InnerDiam=36;
Meas(4,3,3).LengthTrack=1700;
Meas(4,3,3).HeightTrack=3;
Meas(4,3,3).Times=[4.13 4.16 4.18 4.13 4.13];

Meas(4,3,2).Width=148;
Meas(4,3,2).Diameter=57;
Meas(4,3,2).Mass=1661;
Meas(4,3,2).InnerDiam=36;
Meas(4,3,2).LengthTrack=1700;
Meas(4,3,2).HeightTrack=2;
Meas(4,3,2).Times=[2.72 2.71 2.72 2.71 2.72];

Meas(4,3,1).Width=148;
Meas(4,3,1).Diameter=57;
Meas(4,3,1).Mass=1661;
Meas(4,3,1).InnerDiam=36;
Meas(4,3,1).LengthTrack=1700;
Meas(4,3,1).HeightTrack=1;
Meas(4,3,1).Times=[2.15 2.19 2.18 2.19 2.16];
%******************************************************** M **************************************
Meas(5,3,1).Width=150;
Meas(5,3,1).Diameter=58;
Meas(5,3,1).Mass=412;
Meas(5,3,1).InnerDiam=54;
Meas(5,3,1).LengthTrack=1700;
Meas(5,3,1).HeightTrack=1;
Meas(5,3,1).Times=[2.32 2.37 2.35 2.27 2.29];

Meas(5,3,2).Width=150;
Meas(5,3,2).Diameter=58;
Meas(5,3,2).Mass=412;
Meas(5,3,2).InnerDiam=54;
Meas(5,3,2).LengthTrack=1700;
Meas(5,3,2).HeightTrack=2;
Meas(5,3,2).Times=[2.94 2.97 2.96 2.90 2.87];

Meas(5,3,3).Width=150;
Meas(5,3,3).Diameter=58;
Meas(5,3,3).Mass=412;
Meas(5,3,3).InnerDiam=54;
Meas(5,3,3).LengthTrack=1700;
Meas(5,3,3).HeightTrack=3;
Meas(5,3,3).Times=[4.49 4.47 4.45 4.44 4.43];

Meas(5,2,3).Width=150;
Meas(5,2,3).Diameter=58;
Meas(5,2,3).Mass=412;
Meas(5,2,3).InnerDiam=54;
Meas(5,2,3).LengthTrack=1100;
Meas(5,2,3).HeightTrack=3;
Meas(5,2,3).Times=[3.60 3.57 3.60 3.57 3.55];

Meas(5,2,2).Width=150;
Meas(5,2,2).Diameter=58;
Meas(5,2,2).Mass=412;
Meas(5,2,2).InnerDiam=54;
Meas(5,2,2).LengthTrack=1100;
Meas(5,2,2).HeightTrack=2;
Meas(5,2,2).Times=[2.38 2.34 2.34 2.35 2.30];

Meas(5,2,1).Width=150;
Meas(5,2,1).Diameter=58;
Meas(5,2,1).Mass=412;
Meas(5,2,1).InnerDiam=54;
Meas(5,2,1).LengthTrack=1100;
Meas(5,2,1).HeightTrack=1;
Meas(5,2,1).Times=[1.82 1.86 1.87 1.87 1.86];

Meas(5,1,1).Width=150;
Meas(5,1,1).Diameter=58;
Meas(5,1,1).Mass=412;
Meas(5,1,1).InnerDiam=54;
Meas(5,1,1).LengthTrack=600;
Meas(5,1,1).HeightTrack=1;
Meas(5,1,1).Times=[1.39 1.41 1.39 1.43 1.46];

Meas(5,1,2).Width=150;
Meas(5,1,2).Diameter=58;
Meas(5,1,2).Mass=412;
Meas(5,1,2).InnerDiam=54;
Meas(5,1,2).LengthTrack=600;
Meas(5,1,2).HeightTrack=2;
Meas(5,1,2).Times=[1.73 1.68 1.73 1.73 1.71];

Meas(5,1,3).Width=150;
Meas(5,1,3).Diameter=58;
Meas(5,1,3).Mass=412;
Meas(5,1,3).InnerDiam=54;
Meas(5,1,3).LengthTrack=600;
Meas(5,1,3).HeightTrack=3;
Meas(5,1,3).Times=[2.58 2.56 2.61 2.59 2.56];
%************************************************ L ************************************
Meas(6,1,3).Width=149;
Meas(6,1,3).Diameter=36;
Meas(6,1,3).Mass=557;
Meas(6,1,3).InnerDiam=31;
Meas(6,1,3).LengthTrack=600;
Meas(6,1,3).HeightTrack=3;
Meas(6,1,3).Times=[2.53 2.58 2.58 2.54 2.51];

Meas(6,1,2).Width=149;
Meas(6,1,2).Diameter=36;
Meas(6,1,2).Mass=557;
Meas(6,1,2).InnerDiam=31;
Meas(6,1,2).LengthTrack=600;
Meas(6,1,2).HeightTrack=2;
Meas(6,1,2).Times=[1.68 1.65 1.62 1.67 1.62];

Meas(6,1,1).Width=149;
Meas(6,1,1).Diameter=36;
Meas(6,1,1).Mass=557;
Meas(6,1,1).InnerDiam=31;
Meas(6,1,1).LengthTrack=600;
Meas(6,1,1).HeightTrack=1;
Meas(6,1,1).Times=[1.31 1.31 1.35 1.30 1.33];

Meas(6,2,1).Width=149;
Meas(6,2,1).Diameter=36;
Meas(6,2,1).Mass=557;
Meas(6,2,1).InnerDiam=31;
Meas(6,2,1).LengthTrack=1100;
Meas(6,2,1).HeightTrack=1;
Meas(6,2,1).Times=[1.78 1.76 1.75 1.83 1.76];

Meas(6,2,2).Width=149;
Meas(6,2,2).Diameter=36;
Meas(6,2,2).Mass=557;
Meas(6,2,2).InnerDiam=31;
Meas(6,2,2).LengthTrack=1100;
Meas(6,2,2).HeightTrack=2;
Meas(6,2,2).Times=[2.23 2.23 2.24 2.24 2.26];

Meas(6,2,3).Width=149;
Meas(6,2,3).Diameter=36;
Meas(6,2,3).Mass=557;
Meas(6,2,3).InnerDiam=31;
Meas(6,2,3).LengthTrack=1100;
Meas(6,2,3).HeightTrack=3;
Meas(6,2,3).Times=[3.49 3.46 3.47 3.41 3.47];

Meas(6,3,3).Width=149;
Meas(6,3,3).Diameter=36;
Meas(6,3,3).Mass=557;
Meas(6,3,3).InnerDiam=31;
Meas(6,3,3).LengthTrack=1700;
Meas(6,3,3).HeightTrack=3;
Meas(6,3,3).Times=[4.19 4.19 4.26 4.21 4.21];

Meas(6,3,2).Width=149;
Meas(6,3,2).Diameter=36;
Meas(6,3,2).Mass=557;
Meas(6,3,2).InnerDiam=31;
Meas(6,3,2).LengthTrack=1700;
Meas(6,3,2).HeightTrack=2;
Meas(6,3,2).Times=[2.79 2.77 2.74 2.77 2.77];

Meas(6,3,1).Width=149;
Meas(6,3,1).Diameter=36;
Meas(6,3,1).Mass=557;
Meas(6,3,1).InnerDiam=31;
Meas(6,3,1).LengthTrack=1700;
Meas(6,3,1).HeightTrack=1;
Meas(6,3,1).Times=[2.21 2.21 2.21 2.21 2.20];
%************************************************** K ****************************************
Meas(7,3,1).Width=150;
Meas(7,3,1).Diameter=41;
Meas(7,3,1).Mass=1286;
Meas(7,3,1).InnerDiam=0;
Meas(7,3,1).LengthTrack=1700;
Meas(7,3,1).HeightTrack=1;
Meas(7,3,1).Times=[1.99 2.02 1.99 1.99 2.02];

Meas(7,3,2).Width=150;
Meas(7,3,2).Diameter=41;
Meas(7,3,2).Mass=1286;
Meas(7,3,2).InnerDiam=0;
Meas(7,3,2).LengthTrack=1700;
Meas(7,3,2).HeightTrack=2;
Meas(7,3,2).Times=[2.43 2.43 2.46 2.40 2.45];

Meas(7,3,3).Width=150;
Meas(7,3,3).Diameter=41;
Meas(7,3,3).Mass=1286;
Meas(7,3,3).InnerDiam=0;
Meas(7,3,3).LengthTrack=1700;
Meas(7,3,3).HeightTrack=3;
Meas(7,3,3).Times=[3.62 3.76 3.62 3.62 3.63];

Meas(7,2,3).Width=150;
Meas(7,2,3).Diameter=41;
Meas(7,2,3).Mass=1286;
Meas(7,2,3).InnerDiam=0;
Meas(7,2,3).LengthTrack=1100;
Meas(7,2,3).HeightTrack=3;
Meas(7,2,3).Times=[3.03 2.91 2.91 2.90 2.95];

Meas(7,2,2).Width=150;
Meas(7,2,2).Diameter=41;
Meas(7,2,2).Mass=1286;
Meas(7,2,2).InnerDiam=0;
Meas(7,2,2).LengthTrack=1100;
Meas(7,2,2).HeightTrack=2;
Meas(7,2,2).Times=[1.99 1.99 1.99 1.98 1.96];

Meas(7,2,1).Width=150;
Meas(7,2,1).Diameter=41;
Meas(7,2,1).Mass=1286;
Meas(7,2,1).InnerDiam=0;
Meas(7,2,1).LengthTrack=1100;
Meas(7,2,1).HeightTrack=1;
Meas(7,2,1).Times=[1.62 1.63 1.65 1.65 1.63];

Meas(7,1,1).Width=150;
Meas(7,1,1).Diameter=41;
Meas(7,1,1).Mass=1286;
Meas(7,1,1).InnerDiam=0;
Meas(7,1,1).LengthTrack=600;
Meas(7,1,1).HeightTrack=1;
Meas(7,1,1).Times=[1.20 1.27 1.23 1.22 1.22];

Meas(7,1,2).Width=150;
Meas(7,1,2).Diameter=41;
Meas(7,1,2).Mass=1286;
Meas(7,1,2).InnerDiam=0;
Meas(7,1,2).LengthTrack=600;
Meas(7,1,2).HeightTrack=2;
Meas(7,1,2).Times=[1.49 1.46 1.49 1.49 1.47];

Meas(7,1,3).Width=150;
Meas(7,1,3).Diameter=41;
Meas(7,1,3).Mass=1286;
Meas(7,1,3).InnerDiam=0;
Meas(7,1,3).LengthTrack=600;
Meas(7,1,3).HeightTrack=3;
Meas(7,1,3).Times=[2.16 2.23 2.16 2.23 2.23];
%****************************************** J ****************************
Meas(8,1,3).Width=151;
Meas(8,1,3).Diameter=41;
Meas(8,1,3).Mass=412;
Meas(8,1,3).InnerDiam=0;
Meas(8,1,3).LengthTrack=600;
Meas(8,1,3).HeightTrack=3;
Meas(8,1,3).Times=[2.15 2.24 2.19 2.19 2.19];

Meas(8,1,2).Width=151;
Meas(8,1,2).Diameter=41;
Meas(8,1,2).Mass=412;
Meas(8,1,2).InnerDiam=0;
Meas(8,1,2).LengthTrack=600;
Meas(8,1,2).HeightTrack=2;
Meas(8,1,2).Times=[1.54 1.47 1.44 1.47 1.47];

Meas(8,1,1).Width=151;
Meas(8,1,1).Diameter=41;
Meas(8,1,1).Mass=412;
Meas(8,1,1).InnerDiam=0;
Meas(8,1,1).LengthTrack=600;
Meas(8,1,1).HeightTrack=1;
Meas(8,1,1).Times=[1.20 1.23 1.19 1.20 1.19];

Meas(8,2,1).Width=151;
Meas(8,2,1).Diameter=41;
Meas(8,2,1).Mass=412;
Meas(8,2,1).InnerDiam=0;
Meas(8,2,1).LengthTrack=1100;
Meas(8,2,1).HeightTrack=1;
Meas(8,2,1).Times=[1.62 1.62 1.62 1.62 1.60];

Meas(8,2,2).Width=151;
Meas(8,2,2).Diameter=41;
Meas(8,2,2).Mass=412;
Meas(8,2,2).InnerDiam=0;
Meas(8,2,2).LengthTrack=1100;
Meas(8,2,2).HeightTrack=2;
Meas(8,2,2).Times=[1.95 1.99 1.97 1.95 2.00];

Meas(8,2,3).Width=151;
Meas(8,2,3).Diameter=41;
Meas(8,2,3).Mass=412;
Meas(8,2,3).InnerDiam=0;
Meas(8,2,3).LengthTrack=1100;
Meas(8,2,3).HeightTrack=3;
Meas(8,2,3).Times=[2.79 2.87 2.91 2.91 2.82];

Meas(8,3,3).Width=151;
Meas(8,3,3).Diameter=41;
Meas(8,3,3).Mass=412;
Meas(8,3,3).InnerDiam=0;
Meas(8,3,3).LengthTrack=1700;
Meas(8,3,3).HeightTrack=3;
Meas(8,3,3).Times=[3.58 3.63 3.68 3.70 3.65];

Meas(8,3,2).Width=151;
Meas(8,3,2).Diameter=41;
Meas(8,3,2).Mass=412;
Meas(8,3,2).InnerDiam=0;
Meas(8,3,2).LengthTrack=1700;
Meas(8,3,2).HeightTrack=2;
Meas(8,3,2).Times=[2.48 2.46 2.47 2.45 2.46];

Meas(8,3,1).Width=151;
Meas(8,3,1).Diameter=41;
Meas(8,3,1).Mass=412;
Meas(8,3,1).InnerDiam=0;
Meas(8,3,1).LengthTrack=1700;
Meas(8,3,1).HeightTrack=1;
Meas(8,3,1).Times=[1.95 1.97 2.00 2.00 1.96];
%**************************************************** I(var) ******************************
Meas(9,3,1).Width=150;
Meas(9,3,1).Diameter=26;
Meas(9,3,1).Mass=243;
Meas(9,3,1).InnerDiam=20;
Meas(9,3,1).LengthTrack=1700;
Meas(9,3,1).HeightTrack=1;
Meas(9,3,1).Times=[2.15 2.13 2.20 2.14 2.08];

Meas(9,3,2).Width=150;
Meas(9,3,2).Diameter=26;
Meas(9,3,2).Mass=243;
Meas(9,3,2).InnerDiam=20;
Meas(9,3,2).LengthTrack=1700;
Meas(9,3,2).HeightTrack=2;
Meas(9,3,2).Times=[2.58 2.66 2.66 2.63 2.69];

Meas(9,3,3).Width=150;
Meas(9,3,3).Diameter=26;
Meas(9,3,3).Mass=243;
Meas(9,3,3).InnerDiam=20;
Meas(9,3,3).LengthTrack=1700;
Meas(9,3,3).HeightTrack=3;
Meas(9,3,3).Times=[3.90 3.94 3.90 3.90 3.93];

Meas(9,2,3).Width=150;
Meas(9,2,3).Diameter=26;
Meas(9,2,3).Mass=243;
Meas(9,2,3).InnerDiam=20;
Meas(9,2,3).LengthTrack=1100;
Meas(9,2,3).HeightTrack=3;
Meas(9,2,3).Times=[3.14 3.09 3.09 3.07 3.15];

Meas(9,2,2).Width=150;
Meas(9,2,2).Diameter=26;
Meas(9,2,2).Mass=243;
Meas(9,2,2).InnerDiam=20;
Meas(9,2,2).LengthTrack=1100;
Meas(9,2,2).HeightTrack=2;
Meas(9,2,2).Times=[2.15 2.15 2.12 2.07 2.18];

Meas(9,2,1).Width=150;
Meas(9,2,1).Diameter=26;
Meas(9,2,1).Mass=243;
Meas(9,2,1).InnerDiam=20;
Meas(9,2,1).LengthTrack=1100;
Meas(9,2,1).HeightTrack=1;
Meas(9,2,1).Times=[1.73 1.75 1.77 1.75 1.73];

Meas(9,1,1).Width=150;
Meas(9,1,1).Diameter=26;
Meas(9,1,1).Mass=243;
Meas(9,1,1).InnerDiam=20;
Meas(9,1,1).LengthTrack=600;
Meas(9,1,1).HeightTrack=1;
Meas(9,1,1).Times=[1.30 1.29 1.34 1.28 1.25];

Meas(9,1,2).Width=150;
Meas(9,1,2).Diameter=26;
Meas(9,1,2).Mass=243;
Meas(9,1,2).InnerDiam=20;
Meas(9,1,2).LengthTrack=600;
Meas(9,1,2).HeightTrack=2;
Meas(9,1,2).Times=[1.60 1.60 1.62 1.65 1.60];

Meas(9,1,3).Width=150;
Meas(9,1,3).Diameter=26;
Meas(9,1,3).Mass=243;
Meas(9,1,3).InnerDiam=20;
Meas(9,1,3).LengthTrack=600;
Meas(9,1,3).HeightTrack=3;
Meas(9,1,3).Times=[2.40 2.40 2.37 2.35 2.35];
%******************************************************* H *************************
Meas(10,1,1).Width=150;
Meas(10,1,1).Diameter=36;
Meas(10,1,1).Mass=1190;
Meas(10,1,1).InnerDiam=0;
Meas(10,1,1).LengthTrack=600;
Meas(10,1,1).HeightTrack=1;
Meas(10,1,1).Times=[1.22 1.20 1.15 1.14 1.15];

Meas(10,1,2).Width=150;
Meas(10,1,2).Diameter=36;
Meas(10,1,2).Mass=1190;
Meas(10,1,2).InnerDiam=0;
Meas(10,1,2).LengthTrack=600;
Meas(10,1,2).HeightTrack=2;
Meas(10,1,2).Times=[1.40 1.37 1.36 1.47 1.44];

Meas(10,1,3).Width=150;
Meas(10,1,3).Diameter=36;
Meas(10,1,3).Mass=1190;
Meas(10,1,3).InnerDiam=0;
Meas(10,1,3).LengthTrack=600;
Meas(10,1,3).HeightTrack=3;
Meas(10,1,3).Times=[2.11 2.08 2.09 2.07 2.07];

Meas(10,2,3).Width=150;
Meas(10,2,3).Diameter=36;
Meas(10,2,3).Mass=1190;
Meas(10,2,3).InnerDiam=0;
Meas(10,2,3).LengthTrack=1100;
Meas(10,2,3).HeightTrack=3;
Meas(10,2,3).Times=[2.84 2.79 2.83 2.84 2.86];

Meas(10,2,2).Width=150;
Meas(10,2,2).Diameter=36;
Meas(10,2,2).Mass=1190;
Meas(10,2,2).InnerDiam=0;
Meas(10,2,2).LengthTrack=1100;
Meas(10,2,2).HeightTrack=2;
Meas(10,2,2).Times=[1.97 2.00 1.97 1.99 1.99];

Meas(10,2,1).Width=150;
Meas(10,2,1).Diameter=36;
Meas(10,2,1).Mass=1190;
Meas(10,2,1).InnerDiam=0;
Meas(10,2,1).LengthTrack=1100;
Meas(10,2,1).HeightTrack=1;
Meas(10,2,1).Times=[1.60 1.58 1.58 1.63 1.63];

Meas(10,3,1).Width=150;
Meas(10,3,1).Diameter=36;
Meas(10,3,1).Mass=1190;
Meas(10,3,1).InnerDiam=0;
Meas(10,3,1).LengthTrack=1700;
Meas(10,3,1).HeightTrack=1;
Meas(10,3,1).Times=[2.05 1.99 1.97 2.00 1.97 ];

Meas(10,3,2).Width=150;
Meas(10,3,2).Diameter=36;
Meas(10,3,2).Mass=1190;
Meas(10,3,2).InnerDiam=0;
Meas(10,3,2).LengthTrack=1700;
Meas(10,3,2).HeightTrack=2;
Meas(10,3,2).Times=[2.45 2.45 2.42 2.46 2.43];

Meas(10,3,3).Width=150;
Meas(10,3,3).Diameter=36;
Meas(10,3,3).Mass=1190;
Meas(10,3,3).InnerDiam=0;
Meas(10,3,3).LengthTrack=1700;
Meas(10,3,3).HeightTrack=3;
Meas(10,3,3).Times=[3.62 3.49 3.55 3.54 3.54];
%**************************************************** D ******************
Meas(11,3,3).Width=135;
Meas(11,3,3).Diameter=36;
Meas(11,3,3).Mass=1070;
Meas(11,3,3).InnerDiam=0;
Meas(11,3,3).LengthTrack=1700;
Meas(11,3,3).HeightTrack=3;
Meas(11,3,3).Times=[3.54 3.58 3.55 3.49 3.47];

Meas(11,3,2).Width=135;
Meas(11,3,2).Diameter=36;
Meas(11,3,2).Mass=1070;
Meas(11,3,2).InnerDiam=0;
Meas(11,3,2).LengthTrack=1700;
Meas(11,3,2).HeightTrack=2;
Meas(11,3,2).Times=[2.45 2.46 2.45 2.43 2.42];

Meas(11,3,1).Width=135;
Meas(11,3,1).Diameter=36;
Meas(11,3,1).Mass=1070;
Meas(11,3,1).InnerDiam=0;
Meas(11,3,1).LengthTrack=1700;
Meas(11,3,1).HeightTrack=1;
Meas(11,3,1).Times=[1.97 2.02 1.99 1.99 1.99];

Meas(11,2,1).Width=135;
Meas(11,2,1).Diameter=36;
Meas(11,2,1).Mass=1070;
Meas(11,2,1).InnerDiam=0;
Meas(11,2,1).LengthTrack=1100;
Meas(11,2,1).HeightTrack=1;
Meas(11,2,1).Times=[1.58 1.57 1.60 1.58 1.55];

Meas(11,2,2).Width=135;
Meas(11,2,2).Diameter=36;
Meas(11,2,2).Mass=1070;
Meas(11,2,2).InnerDiam=0;
Meas(11,2,2).LengthTrack=1100;
Meas(11,2,2).HeightTrack=2;
Meas(11,2,2).Times=[2.00 1.95 1.99 1.95 1.95];

Meas(11,2,3).Width=135;
Meas(11,2,3).Diameter=36;
Meas(11,2,3).Mass=1070;
Meas(11,2,3).InnerDiam=0;
Meas(11,2,3).LengthTrack=1100;
Meas(11,2,3).HeightTrack=3;
Meas(11,2,3).Times=[2.83 2.87 2.83 2.88 2.85];

Meas(11,1,3).Width=135;
Meas(11,1,3).Diameter=36;
Meas(11,1,3).Mass=1070;
Meas(11,1,3).InnerDiam=0;
Meas(11,1,3).LengthTrack=600;
Meas(11,1,3).HeightTrack=3;
Meas(11,1,3).Times=[2.13 2.19 2.16 2.15 2.18];

Meas(11,1,2).Width=135;
Meas(11,1,2).Diameter=36;
Meas(11,1,2).Mass=1070;
Meas(11,1,2).InnerDiam=0;
Meas(11,1,2).LengthTrack=600;
Meas(11,1,2).HeightTrack=2;
Meas(11,1,2).Times=[1.49 1.43 1.40 1.44 1.39];

Meas(11,1,1).Width=135;
Meas(11,1,1).Diameter=36;
Meas(11,1,1).Mass=1070;
Meas(11,1,1).InnerDiam=0;
Meas(11,1,1).LengthTrack=600;
Meas(11,1,1).HeightTrack=1;
Meas(11,1,1).Times=[1.09 1.07 1.10 1.06 1.03];
%**************************************** C ***********************************
Meas(12,1,1).Width=150;
Meas(12,1,1).Diameter=26;
Meas(12,1,1).Mass=617;
Meas(12,1,1).InnerDiam=0;
Meas(12,1,1).LengthTrack=600;
Meas(12,1,1).HeightTrack=1;
Meas(12,1,1).Times=[1.19 1.19 1.23 1.19 1.13];

Meas(12,1,2).Width=150;
Meas(12,1,2).Diameter=26;
Meas(12,1,2).Mass=617;
Meas(12,1,2).InnerDiam=0;
Meas(12,1,2).LengthTrack=600;
Meas(12,1,2).HeightTrack=2;
Meas(12,1,2).Times=[1.46 1.44 1.42 1.47 1.38];

Meas(12,1,3).Width=150;
Meas(12,1,3).Diameter=26;
Meas(12,1,3).Mass=617;
Meas(12,1,3).InnerDiam=0;
Meas(12,1,3).LengthTrack=600;
Meas(12,1,3).HeightTrack=3;
Meas(12,1,3).Times=[2.09 2.06 2.09 2.01 2.03];

Meas(12,2,3).Width=150;
Meas(12,2,3).Diameter=26;
Meas(12,2,3).Mass=617;
Meas(12,2,3).InnerDiam=0;
Meas(12,2,3).LengthTrack=1100;
Meas(12,2,3).HeightTrack=3;
Meas(12,2,3).Times=[2.93 2.86 2.85 2.88 2.87];

Meas(12,2,2).Width=150;
Meas(12,2,2).Diameter=26;
Meas(12,2,2).Mass=617;
Meas(12,2,2).InnerDiam=0;
Meas(12,2,2).LengthTrack=1100;
Meas(12,2,2).HeightTrack=2;
Meas(12,2,2).Times=[1.95 1.89 1.93 1.95 1.95];

Meas(12,2,1).Width=150;
Meas(12,2,1).Diameter=26;
Meas(12,2,1).Mass=617;
Meas(12,2,1).InnerDiam=0;
Meas(12,2,1).LengthTrack=1100;
Meas(12,2,1).HeightTrack=1;
Meas(12,2,1).Times=[1.58 1.53 1.54 1.58 1.58];

Meas(12,3,1).Width=150;
Meas(12,3,1).Diameter=26;
Meas(12,3,1).Mass=617;
Meas(12,3,1).InnerDiam=0;
Meas(12,3,1).LengthTrack=1700;
Meas(12,3,1).HeightTrack=1;
Meas(12,3,1).Times=[2.00 2.03 1.93 1.94 1.97];

Meas(12,3,2).Width=150;
Meas(12,3,2).Diameter=26;
Meas(12,3,2).Mass=617;
Meas(12,3,2).InnerDiam=0;
Meas(12,3,2).LengthTrack=1700;
Meas(12,3,2).HeightTrack=2;
Meas(12,3,2).Times=[2.36 2.39 2.35 2.39 2.34];

Meas(12,3,3).Width=150;
Meas(12,3,3).Diameter=26;
Meas(12,3,3).Mass=617;
Meas(12,3,3).InnerDiam=0;
Meas(12,3,3).LengthTrack=1700;
Meas(12,3,3).HeightTrack=3;
Meas(12,3,3).Times=[3.54 3.50 3.57 3.53 3.45];
%*************************************************** B **************************************
Meas(13,3,3).Width=151;
Meas(13,3,3).Diameter=20;
Meas(13,3,3).Mass=368;
Meas(13,3,3).InnerDiam=0;
Meas(13,3,3).LengthTrack=1700;
Meas(13,3,3).HeightTrack=3;
Meas(13,3,3).Times=[3.57 3.62 3.55 3.57 3.54];

Meas(13,3,2).Width=151;
Meas(13,3,2).Diameter=20;
Meas(13,3,2).Mass=368;
Meas(13,3,2).InnerDiam=0;
Meas(13,3,2).LengthTrack=1700;
Meas(13,3,2).HeightTrack=2;
Meas(13,3,2).Times=[2.45 2.48 2.44 2.43 2.40];

Meas(13,3,1).Width=151;
Meas(13,3,1).Diameter=20;
Meas(13,3,1).Mass=368;
Meas(13,3,1).InnerDiam=0;
Meas(13,3,1).LengthTrack=1700;
Meas(13,3,1).HeightTrack=1;
Meas(13,3,1).Times=[1.96 1.95 1.95 1.95 1.94];

Meas(13,2,1).Width=151;
Meas(13,2,1).Diameter=20;
Meas(13,2,1).Mass=368;
Meas(13,2,1).InnerDiam=0;
Meas(13,2,1).LengthTrack=1100;
Meas(13,2,1).HeightTrack=1;
Meas(13,2,1).Times=[1.54 1.50 1.55 1.46 1.55];

Meas(13,2,2).Width=151;
Meas(13,2,2).Diameter=20;
Meas(13,2,2).Mass=368;
Meas(13,2,2).InnerDiam=0;
Meas(13,2,2).LengthTrack=1100;
Meas(13,2,2).HeightTrack=2;
Meas(13,2,2).Times=[1.80 1.77 1.82 1.83 1.74];

Meas(13,2,3).Width=151;
Meas(13,2,3).Diameter=20;
Meas(13,2,3).Mass=368;
Meas(13,2,3).InnerDiam=0;
Meas(13,2,3).LengthTrack=1100;
Meas(13,2,3).HeightTrack=3;
Meas(13,2,3).Times=[2.79 2.80 2.71 2.75 2.85];

Meas(13,1,3).Width=151;
Meas(13,1,3).Diameter=20;
Meas(13,1,3).Mass=368;
Meas(13,1,3).InnerDiam=0;
Meas(13,1,3).LengthTrack=600;
Meas(13,1,3).HeightTrack=3;
Meas(13,1,3).Times=[2.07 1.98 2.10 2.01 2.10];

Meas(13,1,2).Width=151;
Meas(13,1,2).Diameter=20;
Meas(13,1,2).Mass=368;
Meas(13,1,2).InnerDiam=0;
Meas(13,1,2).LengthTrack=600;
Meas(13,1,2).HeightTrack=2;
Meas(13,1,2).Times=[1.39 1.42 1.39 1.32 1.31];

Meas(13,1,1).Width=151;
Meas(13,1,1).Diameter=20;
Meas(13,1,1).Mass=368;
Meas(13,1,1).InnerDiam=0;
Meas(13,1,1).LengthTrack=600;
Meas(13,1,1).HeightTrack=1;
Meas(13,1,1).Times=[1.08 1.11 1.05 1.04 1.05];

%********************************* A ************

Meas(14,3,1).Width=175;
Meas(14,3,1).Diameter=37;
Meas(14,3,1).Mass=1390;
Meas(14,3,1).InnerDiam=0;
Meas(14,3,1).LengthTrack=1700;
Meas(14,3,1).HeightTrack=1;
Meas(14,3,1).Times=[2.10 2.03 2.02 2.03 2.03];

Meas(14,3,2).Width=175;
Meas(14,3,2).Diameter=37;
Meas(14,3,2).Mass=1390;
Meas(14,3,2).InnerDiam=0;
Meas(14,3,2).LengthTrack=1700;
Meas(14,3,2).HeightTrack=2;
Meas(14,3,2).Times=[2.62 2.59 2.56 2.58 2.61];

Meas(14,3,3).Width=175;
Meas(14,3,3).Diameter=37;
Meas(14,3,3).Mass=1390;
Meas(14,3,3).InnerDiam=0;
Meas(14,3,3).LengthTrack=1700;
Meas(14,3,3).HeightTrack=3;
Meas(14,3,3).Times=[3.92 4.11 3.99 4.05 4.08];

Meas(14,2,3).Width=175;
Meas(14,2,3).Diameter=37;
Meas(14,2,3).Mass=1390;
Meas(14,2,3).InnerDiam=0;
Meas(14,2,3).LengthTrack=1100;
Meas(14,2,3).HeightTrack=3;
Meas(14,2,3).Times=[3.31 3.23 3.30 3.25 3.20];

Meas(14,2,2).Width=175;
Meas(14,2,2).Diameter=37;
Meas(14,2,2).Mass=1390;
Meas(14,2,2).InnerDiam=0;
Meas(14,2,2).LengthTrack=1100;
Meas(14,2,2).HeightTrack=2;
Meas(14,2,2).Times=[2.11 2.08 2.10 2.08 2.11];

Meas(14,2,1).Width=175;
Meas(14,2,1).Diameter=37;
Meas(14,2,1).Mass=1390;
Meas(14,2,1).InnerDiam=0;
Meas(14,2,1).LengthTrack=1100;
Meas(14,2,1).HeightTrack=1;
Meas(14,2,1).Times=[1.67 1.78 1.67 1.73 1.67];

Meas(14,1,1).Width=175;
Meas(14,1,1).Diameter=37;
Meas(14,1,1).Mass=1390;
Meas(14,1,1).InnerDiam=0;
Meas(14,1,1).LengthTrack=600;
Meas(14,1,1).HeightTrack=1;
Meas(14,1,1).Times=[1.26 1.27 1.24 1.30 1.28];

Meas(14,1,2).Width=175;
Meas(14,1,2).Diameter=37;
Meas(14,1,2).Mass=1390;
Meas(14,1,2).InnerDiam=0;
Meas(14,1,2).LengthTrack=600;
Meas(14,1,2).HeightTrack=2;
Meas(14,1,2).Times=[1.58 1.59 1.53 1.65 1.51];

Meas(14,1,3).Width=175;
Meas(14,1,3).Diameter=37;
Meas(14,1,3).Mass=1390;
Meas(14,1,3).InnerDiam=0;
Meas(14,1,3).LengthTrack=600;
Meas(14,1,3).HeightTrack=3;
Meas(14,1,3).Times=[2.37 2.50 2.48 2.47 2.51];

%***************************** E ************

Meas(15,1,3).Width=111;
Meas(15,1,3).Diameter=36;
Meas(15,1,3).Mass=876;
Meas(15,1,3).InnerDiam=0;
Meas(15,1,3).LengthTrack=600;
Meas(15,1,3).HeightTrack=3;
Meas(15,1,3).Times=[2.46 2.47 2.55 2.50 2.31];

Meas(15,1,2).Width=111;
Meas(15,1,2).Diameter=36;
Meas(15,1,2).Mass=876;
Meas(15,1,2).InnerDiam=0;
Meas(15,1,2).LengthTrack=600;
Meas(15,1,2).HeightTrack=2;
Meas(15,1,2).Times=[1.58 1.62 1.60 1.59 1.54];

Meas(15,1,1).Width=111;
Meas(15,1,1).Diameter=36;
Meas(15,1,1).Mass=876;
Meas(15,1,1).InnerDiam=0;
Meas(15,1,1).LengthTrack=600;
Meas(15,1,1).HeightTrack=1;
Meas(15,1,1).Times=[1.25 1.27 1.26 1.28 1.30];

Meas(15,2,1).Width=111;
Meas(15,2,1).Diameter=36;
Meas(15,2,1).Mass=876;
Meas(15,2,1).InnerDiam=0;
Meas(15,2,1).LengthTrack=1100;
Meas(15,2,1).HeightTrack=1;
Meas(15,2,1).Times=[1.65 1.63 1.65 1.65 1.67];

Meas(15,2,2).Width=111;
Meas(15,2,2).Diameter=36;
Meas(15,2,2).Mass=876;
Meas(15,2,2).InnerDiam=0;
Meas(15,2,2).LengthTrack=1100;
Meas(15,2,2).HeightTrack=2;
Meas(15,2,2).Times=[2.05 2.07 2.03 1.98 2.08];

Meas(15,2,3).Width=111;
Meas(15,2,3).Diameter=36;
Meas(15,2,3).Mass=876;
Meas(15,2,3).InnerDiam=0;
Meas(15,2,3).LengthTrack=1100;
Meas(15,2,3).HeightTrack=3;
Meas(15,2,3).Times=[3.22 3.23 3.23 3.23 3.31];

Meas(15,3,3).Width=111;
Meas(15,3,3).Diameter=36;
Meas(15,3,3).Mass=876;
Meas(15,3,3).InnerDiam=0;
Meas(15,3,3).LengthTrack=1700;
Meas(15,3,3).HeightTrack=3;
Meas(15,3,3).Times=[3.86 4.00 4.01 3.95 3.95];

Meas(15,3,2).Width=111;
Meas(15,3,2).Diameter=36;
Meas(15,3,2).Mass=876;
Meas(15,3,2).InnerDiam=0;
Meas(15,3,2).LengthTrack=1700;
Meas(15,3,2).HeightTrack=2;
Meas(15,3,2).Times=[2.50 2.54 2.51 2.48 2.58];

Meas(15,3,1).Width=111;
Meas(15,3,1).Diameter=36;
Meas(15,3,1).Mass=876;
Meas(15,3,1).InnerDiam=0;
Meas(15,3,1).LengthTrack=1700;
Meas(15,3,1).HeightTrack=1;
Meas(15,3,1).Times=[2.11 2.04 1.96 2.02 2.02];
% Fixing typos
for i=1:3
for h=1:3
Meas(2,i,h).InnerDiam=56;
end
end

for i=1:3
for h=1:3
Meas(6,i,h).InnerDiam=26;
end
end
%% Mean
for i=1:15
   for j=1:3
       for k=1:3
            Meas(i,j,k).Mean=mean(Meas(i,j,k).Times);       
       end
   end
end
%% Angle
for i=1:15                          % Constructs a new struct, with the angle as a funktion of the heightindex.   
    for j=1:3
        for k=1:3
            Meas(i,j,k).Angle=angle(Meas(i,j,k).HeightTrack);
        end
    end
end
%% Density in kg/mm^3
% Thats why its such a small number.
for i=1:15                          % Constructs a new struct, with the density as a funktion of mass and volume.   
    for j=1:3
        for k=1:3
            volume=Meas(i,j,k).Width.*(pi.*((Meas(i,j,k).Diameter./2).^2-(Meas(i,j,k).InnerDiam./2).^2));
            Meas(i,j,k).Density=Meas(i,j,k).Mass./volume;
        end
    end
end
%% Calc expLenghtTrack
for i=1:15
    for j=1:3
        x=log(cat(1,Meas(i,:,j).LengthTrack));
        A=[x,ones(size(x))];
        y=log(cat(1,Meas(i,:,j).Mean));
        KM=A\y;
        AllKValue(i,j)=KM(1);
    end
end
expLenghtTrack=mean(mean(AllKValue));
clear AllKValue
%% Calc expAngle
%Compensating for length of track
for i=1:15
        x=log(cat(1,Meas(i,:,:).Angle));
        A=[x,ones(size(x))];
        y=log(cat(1,Meas(i,:,:).Mean)./(cat(1,Meas(i,:,:).LengthTrack)).^expLenghtTrack);
        KM=A\y;
        AllKValue(i)=KM(1);
end
expAngle=mean(AllKValue);
clear AllKValue
%% Calc expDiameter
%expLenghtTrack=0.5;
%expAngle = -0.5;
i=[1,3,10,12,13];
%h=3;l=3;
x=log(cat(1,Meas(i,:,:).Diameter));
A=[x,ones(size(x))];
y=log(cat(1,Meas(i,:,:).Mean)./...
    (cat(1,Meas(i,:,:).LengthTrack)).^expLenghtTrack./...
    (cat(1,Meas(i,:,:).Angle)).^expAngle);
KM=A\y;
expDiameter=KM(1);
%% Calc expWidth
i=[1,3,10,12,13,14,15];
x=log(cat(1,Meas(i,:,:).Width));
A=[x,ones(size(x))];
y=log(cat(1,Meas(i,:,:).Mean)./...
    (cat(1,Meas(i,:,:).LengthTrack)).^expLenghtTrack./...
    (cat(1,Meas(i,:,:).Angle)).^expAngle);%./...
    %(cat(1,Meas(i,1,1).Diameter)).^expDiameter);
KM=A\y;
expWidth=KM(1);
%% Calc expDensity
i=[1,3,7,8,10,12,13,14,15];
x=log(cat(1,Meas(i,:,:).Density));
A=[x,ones(size(x))];
y=log(cat(1,Meas(i,:,:).Mean)./...
    (cat(1,Meas(i,:,:).LengthTrack)).^expLenghtTrack./...
    (cat(1,Meas(i,:,:).Angle)).^expAngle./...
    (cat(1,Meas(i,:,:).Diameter)).^expDiameter./...
    (cat(1,Meas(i,:,:).Width)).^expWidth);
KM=A\y;
expDensity=KM(1);
%% Calc constant c (solid)
i=[1,3,7,8,10,12,13,14,15];
y=cat(1,Meas(i,:,:).Mean)./...
    (cat(1,Meas(i,:,:).LengthTrack)./1000).^expLenghtTrack./...
    (sin(cat(1,Meas(i,:,:).Angle))).^expAngle./9.82^(-0.5);
    %(cat(1,Meas(i,:,:).Diameter)).^expDiameter./...
    %(cat(1,Meas(i,:,:).Width)).^expWidth./...
    %(cat(1,Meas(i,:,:).Density)).^expDensity;
c=mean(y);
%% Tiny code

for i=1:15
    for l=1:3
       for h=1:3
           Meas(i,l,h).SolidTime=c.*sqrt(Meas(i,l,h).LengthTrack./(9.82.*sin(Meas(i,l,h).Angle)));
       end
    end
end

Solids=[1 3 7 8 10 11 12 13 14 15];
clf
scatter(cat(1,Meas(Solids,:,:).Mean),cat(1,Meas(Solids,:,:).SolidTime))
%% Calc InnerDiam
i=[2 4 5 6 9];
%i=1:15;
l=1:3;h=1:3;

TdivTexpr=((cat(1,Meas(i,l,h).Mean)./...
    (cat(1,Meas(i,l,h).LengthTrack)./1000).^expLenghtTrack./...
    (sin(cat(1,Meas(i,l,h).Angle))).^expAngle./...
    c.*sqrt(9.82)));
TdivTs = cat(1,Meas(i,l,h).Mean)./cat(1,Meas(i,l,h).SolidTime);
ddivD = cat(1,Meas(i,l,h).InnerDiam)./cat(1,Meas(i,l,h).Diameter);
includeIdx = find(TdivTexpr > 1);
x=log(ddivD(includeIdx));
A=[x,ones(size(x))];
y = log(TdivTexpr(includeIdx).^2-1);
    
KM=A\y;
expInnerDiam=KM(1)
%% Calc constant b (non-solid)
i=[2 4 5 6 9];
y=cat(1,Meas(i,:,:).Mean)./...
    (cat(1,Meas(i,:,:).LengthTrack)./1000).^expLenghtTrack./...
    (sin(cat(1,Meas(i,:,:).Angle))).^expAngle./...
    9.82^(-0.5)./c./...
    (cat(1,Meas(i,:,:).InnerDiam)./cat(1,Meas(i,:,:).Diameter)).^expInnerDiam;
b=mean(y)
%% Plotting suspicious things
if false
    clf
    scatter(x,y)
    hold on
    xvec=linspace(min(x),max(x));
    yvec=KM(1).*xvec+KM(2);
    plot(xvec,yvec)
end
clear;
close all
clc

dongu=1;


while dongu==1
    
ortam_sayisi=input('Ortam sayısını giriniz.(1,2,3,4)=');

if ortam_sayisi==1
    
% Değişkenler
dielektrik1=input('Ortamın dielektrik katsayısını giriniz=');
manyetik1=input('Ortamın manyetik geçirgenliği giriniz=');
mur1=manyetik1;
er1=dielektrik1;
e0=(8.854*10^-12);
mu0=(4*pi*10^-7);

epsilon1 = er1*e0;
mu1 = mur1*mu0; 
v1 = 1/(sqrt(epsilon1*mu1));
f1 = 200e12;
lambda1 = v1/f1;
k1 = 2*pi/lambda1;
w1 = 2*pi*f1;


% Zaman
Nt = 1000;
dt1 = 1/f1/50;


% Ortam vektörleri
x = linspace(0,4*lambda1,1000);
y = linspace(0,4*lambda1,1000);
z = linspace(0,4*lambda1,1000);


fig = figure;

for nt=1:Nt
    
  clf
    
  
  plot3(x,cos(k1*x-nt*dt1*w1),z,'LineWidth',3);
  hold on
  plot3(x,y,cos(k1*x-nt*dt1*w1),'LineWidth',3);
  
  axis([0 4*lambda1 -2 2 -2 2]);
  xlabel('Propagasyon yönü (X)');
  ylabel('Elektrik alan (Y)');
  zlabel('Manyetik alan (Z)');
  title('Elektromanyetik dalga');
  legend('Elektrik alan','Manyetik alan')
  grid on
  
  view([35 30])
  
  %dönmesi için view([35+.25*nt 30])
  
  
  
  
  movie(nt) = getframe(fig, [0 0 530 410]);
end

video = VideoWriter('Dalga simülasyonu', 'MPEG-4');



open(video);
writeVideo(video, movie);
close(video);

dongu=0;
  
elseif ortam_sayisi==2
    
% Değişkenler
dielektrik1=input('1. Ortamın dielektrik katsayısını giriniz=');
manyetik1=input('1. Ortamın manyetik geçirgenliği giriniz=');
dielektrik2=input('2. Ortamın dielektrik katsayısını giriniz=');
manyetik2=input('2. Ortamın manyetik geçirgenliği giriniz=');

%1. ortam değişkenler
mur1=manyetik1;
er1=dielektrik1;

e0=(8.854*10^-12);
mu0=(4*pi*10^-7);

epsilon1 = er1*e0;
mu1 = mur1*mu0;
v1 = 1/(sqrt(epsilon1*mu1));
f1 = 200e12;
lambda1 = v1/f1;
k1 = 2*pi/lambda1;
w1 = 2*pi*f1;

%2. ortam değişkenler
mur2=manyetik2;
er2=dielektrik2;

epsilon2 = er2*e0;
mu2 = mur2*mu0; 
v2 = 1/(sqrt(epsilon2*mu2));
f2 = 200e12;
lambda2 = v2/f2;
k2 = 2*pi/lambda2;
w2 = 2*pi*f2;

% Zaman
Nt = 1000;
dt1 = 1/f1/50;
dt2 = 1/f2/50;

% Ortam vektörleri
x = linspace(0,4*lambda1,1000);
y = linspace(0,4*lambda1,1000);
z = linspace(0,4*lambda1,1000);

x1 = linspace(4*lambda1,8*lambda2,1000);
y1 = linspace(4*lambda1,8*lambda2,1000);
z1 = linspace(4*lambda1,8*lambda2,1000);

fig = figure;

for nt=1:Nt
    
  clf
    
  
  plot3(x,cos(k1*x-nt*dt1*w1),z,x1,cos(k2*x-nt*dt2*w2),z1,'LineWidth',3);
  hold on
  plot3(x,y,cos(k1*x-nt*dt1*w1),x1,y1,cos(k2*x-nt*dt2*w2),'LineWidth',3);
  
  axis([0 8*lambda2 -2 2 -2 2]);
  xlabel('Propagasyon yönü (X)');
  ylabel('Elektrik alan (Y)');
  zlabel('Manyetik alan (Z)');
  title('Elektromanyetik dalga');
  grid on
  
  view([35 30])
  
  %dönmesi için view([35+.25*nt 30])
  
  
  
  
  movie(nt) = getframe(fig, [0 0 530 410]);
end

video = VideoWriter('Dalga simülasyonu', 'MPEG-4');

open(video);
writeVideo(video, movie);
close(video);

dongu=0;

elseif ortam_sayisi==3
    
    
% Değişkenler
dielektrik1=input('1. Ortamın dielektrik katsayısını giriniz=');
manyetik1=input('1. Ortamın manyetik geçirgenliği giriniz=');
dielektrik2=input('2. Ortamın dielektrik katsayısını giriniz=');
manyetik2=input('2. Ortamın manyetik geçirgenliği giriniz=');
dielektrik3=input('3. Ortamın dielektrik katsayısını giriniz=');
manyetik3=input('3. Ortamın manyetik geçirgenliği giriniz=');

%1. ortam değişkenler
mur1=manyetik1;
er1=dielektrik1;

e0=(8.854*10^-12);
mu0=(4*pi*10^-7);

epsilon1 = er1*e0;
mu1 = mur1*mu0;
v1 = 1/(sqrt(epsilon1*mu1));
f1 = 200e12;
lambda1 = v1/f1;
k1 = 2*pi/lambda1;
w1 = 2*pi*f1;

%2. ortam değişkenler
mur2=manyetik2;
er2=dielektrik2;

epsilon2 = er2*e0;
mu2 = mur2*mu0; 
v2 = 1/(sqrt(epsilon2*mu2));
f2 = 200e12;
lambda2 = v2/f2;
k2 = 2*pi/lambda2;
w2 = 2*pi*f2;

%3. ortam değişkenler
mur3=manyetik3;
er3=dielektrik3;

epsilon3 = er3*e0;
mu3 = mur3*mu0; 
v3 = 1/(sqrt(epsilon3*mu3));
f3 = 200e12;
lambda3 = v3/f3;
k3 = 2*pi/lambda3;
w3 = 2*pi*f2;

% Zaman
Nt = 1000;
dt1 = 1/f1/50;
dt2 = 1/f2/50;
dt3 = 1/f3/50;

% Ortam vektörleri
x = linspace(0,4*lambda1,1000);
y = linspace(0,4*lambda1,1000);
z = linspace(0,4*lambda1,1000);

x1 = linspace(4*lambda1,8*lambda2,1000);
y1 = linspace(4*lambda1,8*lambda2,1000);
z1 = linspace(4*lambda1,8*lambda2,1000);

x2 = linspace(8*lambda2,12*lambda3,1000);
y2 = linspace(8*lambda2,12*lambda3,1000);
z2 = linspace(8*lambda2,12*lambda3,1000);

fig = figure;

for nt=1:Nt
    
  clf
    
  
  plot3(x,cos(k1*x-nt*dt1*w1),z,x1,cos(k2*x-nt*dt2*w2),z1,x2,cos(k3*x-nt*dt3*w3),z2,'LineWidth',3);
  hold on
  plot3(x,y,cos(k1*x-nt*dt1*w1),x1,y1,cos(k2*x-nt*dt2*w2),x2,y2,cos(k3*x-nt*dt3*w3),'LineWidth',3);
  
  axis([0 12*lambda3 -2 2 -2 2]);
  xlabel('Propagasyon yönü (X)');
  ylabel('Elektrik alan (Y)');
  zlabel('Manyetik alan (Z)');
  title('Elektromanyetik dalga');
  grid on
  
  view([35 30])
  
  %dönmesi için view([35+.25*nt 30])
  
  
  
  
  movie(nt) = getframe(fig, [0 0 530 410]);
end

video = VideoWriter('Dalga simülasyonu', 'MPEG-4');

open(video);
writeVideo(video, movie);
close(video);

dongu=0;


elseif ortam_sayisi==4
    
    
% Değişkenler
dielektrik1=input('1. Ortamın dielektrik katsayısını giriniz=');
manyetik1=input('1. Ortamın manyetik geçirgenliği giriniz=');
dielektrik2=input('2. Ortamın dielektrik katsayısını giriniz=');
manyetik2=input('2. Ortamın manyetik geçirgenliği giriniz=');
dielektrik3=input('3. Ortamın dielektrik katsayısını giriniz=');
manyetik3=input('3. Ortamın manyetik geçirgenliği giriniz=');
dielektrik4=input('4. Ortamın dielektrik katsayısını giriniz=');
manyetik4=input('4. Ortamın manyetik geçirgenliği giriniz=');

%1. ortam değişkenler
mur1=manyetik1;
er1=dielektrik1;

e0=(8.854*10^-12);
mu0=(4*pi*10^-7);

epsilon1 = er1*e0;
mu1 = mur1*mu0;
v1 = 1/(sqrt(epsilon1*mu1));
f1 = 200e12;
lambda1 = v1/f1;
k1 = 2*pi/lambda1;
w1 = 2*pi*f1;

%2. ortam değişkenler
mur2=manyetik2;
er2=dielektrik2;

epsilon2 = er2*e0;
mu2 = mur2*mu0; 
v2 = 1/(sqrt(epsilon2*mu2));
f2 = 200e12;
lambda2 = v2/f2;
k2 = 2*pi/lambda2;
w2 = 2*pi*f2;

%3. ortam değişkenler
mur3=manyetik3;
er3=dielektrik3;

epsilon3 = er3*e0;
mu3 = mur3*mu0; 
v3 = 1/(sqrt(epsilon3*mu3));
f3 = 200e12;
lambda3 = v3/f3;
k3 = 2*pi/lambda3;
w3 = 2*pi*f2;

%4. ortam değişkenler
mur4=manyetik4;
er4=dielektrik4;

e0=(8.854*10^-12);
mu0=(4*pi*10^-7);

epsilon4 = er4*e0;
mu4 = mur4*mu0;
v4 = 1/(sqrt(epsilon4*mu4));
f4 = 200e12;
lambda4 = v4/f4;
k4 = 2*pi/lambda4;
w4 = 2*pi*f4;

% Zaman
Nt = 1000;
dt1 = 1/f1/50;
dt2 = 1/f2/50;
dt3 = 1/f3/50;
dt4 = 1/f4/50;

% Ortam vektörleri
x = linspace(0,4*lambda1,1000);
y = linspace(0,4*lambda1,1000);
z = linspace(0,4*lambda1,1000);

x1 = linspace(4*lambda1,8*lambda2,1000);
y1 = linspace(4*lambda1,8*lambda2,1000);
z1 = linspace(4*lambda1,8*lambda2,1000);

x2 = linspace(8*lambda2,12*lambda3,1000);
y2 = linspace(8*lambda2,12*lambda3,1000);
z2 = linspace(8*lambda2,12*lambda3,1000);

x3 = linspace(12*lambda3,16*lambda4,1000);
y3 = linspace(12*lambda3,16*lambda4,1000);
z3 = linspace(12*lambda3,16*lambda4,1000);

fig = figure;

for nt=1:Nt
    
  clf
    
  
  plot3(x,cos(k1*x-nt*dt1*w1),z,x1,cos(k2*x-nt*dt2*w2),z1,x2,cos(k3*x-nt*dt3*w3),z2,x3,cos(k4*x-nt*dt4*w4),z3,'LineWidth',3);
  hold on
  plot3(x,y,cos(k1*x-nt*dt1*w1),x1,y1,cos(k2*x-nt*dt2*w2),x2,y2,cos(k3*x-nt*dt3*w3),x3,y3,cos(k4*x-nt*dt4*w4),'LineWidth',3);
  
  axis([0 16*lambda4 -2 2 -2 2]);
  xlabel('Propagasyon yönü (X)');
  ylabel('Elektrik alan (Y)');
  zlabel('Manyetik alan (Z)');
  title('Elektromanyetik dalga');
  grid on
  
  view([35 30])
  
  %dönmesi için view([35+.25*nt 30])
  
  
  movie(nt) = getframe(fig, [0 0 530 410]);
  
  

end

  video = VideoWriter('Dalga simülasyonu', 'MPEG-4');
  open(video);
  writeVideo(video, movie);
  close(video);


dongu=0;
 

else 
    fprintf('Ortam sayısı için sadece (1,2,3,4) değerleri girilebilir, lütfen tekrar çalıştırınız. \n');
end


end

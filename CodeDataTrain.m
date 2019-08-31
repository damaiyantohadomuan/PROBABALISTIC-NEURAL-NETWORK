%NOMOR A.1 MeLoad data_train_PNN.txt & Scatter Plot

tdfread('data_train_PNN.txt');

figure
scatter3(att1,att2,att3,20,label);

DT = [att1,att2,att3,label];

%NOMOR A.2 Buat Model
HasilModel = Model(DT);





        



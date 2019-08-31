%NOMOR A.2 , RUMUS GAUSS

function RumusFungsi = Rumus(DataTrainNew,DataTestNew,i,j,tahoe)

    x1Train = DataTrainNew(j,1);
    x1Test = DataTestNew (i,1);
    x2Train = DataTrainNew(j,2);
    x2Test = DataTestNew (i,2);
    x3Train = DataTrainNew(j,3);
    x3Test = DataTestNew (i,3);
    
    divider = 2*(tahoe.^2);
    RumusFungsi = exp(-((x1Test-x1Train).^2 + (x2Test-x2Train).^2+(x3Test-x3Train).^2)/divider);
end


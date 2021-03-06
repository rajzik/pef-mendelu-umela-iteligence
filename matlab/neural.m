

    [inputs,targets] = bodyfat_dataset;
    net = newfit(inputs, targets, 10);
    [learnedNet, tr] = trainlm(net,inputs,targets);
    figure(1);
    plottrainstate(tr)
    figure(2);
    plotperform(tr)
    view(learnedNet)
    
    
    N = 10;
    vzorekN = inputs(:,N);
    
    out = learnedNet(vzorekN)
    targets(N)
    y = learnedNet(inputs);
    figure(3);
    
    plot([1:length(y)], y, [1:length(y)], targets)

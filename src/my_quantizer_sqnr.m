axis_x=[1:1:size(y)];
my_quantizer_sqnr=zeros(3,1);
plot_title=['Uniform quantization N=2';'Uniform quantization N=4';'Uniform quantization N=6'];
for i=2:2:6
    [xq,Centers]=my_quantizer(y,i,-1,1);
    D=mean((y-xq).^2);
    my_quantizer_sqnr(i/2,1)=mean(y.^2)/D;
    figure;
    plot(axis_x,xq,'.');
    title(plot_title(i/2,:));
end
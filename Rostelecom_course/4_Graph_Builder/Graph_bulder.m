% graph builder
function y = Graph_builder(k, x)
    y = k.* log(x);
    
    plot(x, y, 'LineWidth', 2);
    axis([0.01 2 -5 2]);
    
    k_size = size(k);
    
    str_arr = string(k);
    for i = 1:k_size
        str_arr(i) = ' - k = ' + str_arr(i);
    end
    disp(str_arr);
    lgd = legend(str_arr, 'Location','southeastoutside');
    lgd.FontSize = 8;
    
    
    grid on;
    title('Y = k * lnX')
    xlabel('x')
    ylabel('y')
    
    print('Graphs.png','-dpng','-r300');  
end

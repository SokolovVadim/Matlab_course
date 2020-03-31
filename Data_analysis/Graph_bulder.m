% graph builder
function y = Graph_builder(k, x)
    % Poland
    for i = 1:16
        y(i) = exp(0.7 + x(i) / 3.6);
    end
    
    for i = 17:24
        y(i) = exp(2.1 + x(i) / 5.0);
    end
    
    for i = 24:k
        y(i) = exp(3.85 + x(i) / 8.0);
    end
    
%     for i = 1:31
%         disp(string(x(i)) + ' '+ string(y(i)));
%     end
    % Russia
    
    for i = 1:15
        z(i) = exp(0.7 + x(i) / 4.6);
    end
    
    for i = 15:20
        z(i) = exp(1.3 + x(i) / 4.8);
    end
    
    for i = 21:25
        z(i) = exp(1.8 + x(i) / 5.3);
    end
    for i = 26:30
        z(i) = exp(2.0 + x(i) / 5.45);
    end
    
    for i = 31:35
        z(i) = exp(2.2 + x(i) / 5.6);
    end
    
    for i = 36:40
        z(i) = exp(2.35 + x(i) / 5.8);
    end
    for i = 41:46
        z(i) = exp(2.5 + x(i) / 5.95);
    end
    
    for i = 46:50
        z(i) = exp(2.65 + x(i) / 6.1);
    end
    
    for i = 51:53
        z(i) = -350000 + 8000 * x(i);
    end
    
    for i = 54:56
        z(i) = -240000 + 6000 * x(i);
    end
    
    for i = 57:k
        z(i) = -125000 + 4000 * x(i);
    end
    
    for i = 61:63
        z(i) = -5000 + 2000 * x(i);
    end
    
    for i = 64:k
        z(i) = 96000 + 400 * x(i);
    end
    
%     for i = 1:31
%         disp(string(x(i)) + ' '+ string(z(i)));
%     end
    % y = [y; z];
    y = z;
    plot(x, y, 'LineWidth', 3);
    axis([8 k 0 150000]);
        
    str_arr = string(1);
    %str_arr(1) = 'Poland';
    str_arr(1) = 'Russia';
    disp(str_arr);
    lgd = legend(str_arr, 'Location','northwest');
    lgd.FontSize = 12;
    
    grid on;
    title('Y = exp(aX + b), April 27')
    xlabel('x')
    ylabel('y')
    
    print('Graphs.png','-dpng','-r300');  
end

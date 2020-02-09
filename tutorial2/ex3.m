quadroot(6)
quadroot(-6)

function y = quadroot(a)
    validateattributes(a, {'numeric'}, {}, '', 'a');
    
    if abs(a) <= 2
        error('Expected a^2 to be greater than 4.')
    end
        
    sign = a / abs(a);
    y = [(a + sign * sqrt(a^2 - 4)) / 2, 2/(a + sign * sqrt(a^2 - 4))];
end

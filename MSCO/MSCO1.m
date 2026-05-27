classdef MSCO1 < Problem
% <Multi-task> <Multi-objective> <Constrained>

% Multi-series collaborative optimization problem of copper electrolysis process




methods
    function Prob = MSCO1(varargin)
        Prob = Prob@Problem(varargin);
        Prob.maxFE = 300 * 200;
        
    end

    function setTasks(Prob)
        Prob.T = 3;

        Prob.M(1) = 3;
        Prob.D(1) = 16;
        Prob.Fnc{1} = @(x)ISA1_2_6(x);
        Prob.Lb{1} = zeros(1, Prob.D(1));
        Prob.Ub{1} = 1 * ones(1, Prob.D(1));

        Prob.M(2) = 3;%
        Prob.D(2) = 20;
        Prob.Fnc{2} = @(x)ISA1_7_9(x);
        Prob.Lb{2} = zeros(1, Prob.D(2));
        Prob.Ub{2} = 1 * ones(1, Prob.D(2));

        Prob.M(3) = 3;%
        Prob.D(3) = 28;
        Prob.Fnc{3} = @(x)ISA1_12_1(x);
        Prob.Lb{3} = zeros(1, Prob.D(3));
        Prob.Ub{3} = 1 * ones(1, Prob.D(3));

    end
    
    end
end






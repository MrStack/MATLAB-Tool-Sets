classdef Tuple
    properties(SetAccess = private)
        CellCountainer
    end
    
    methods(Access = private)
        function obj = CheckInputDimensions(obj, InputArgumentsList)
            ArgumentsCount = size(InputArgumentsList,1);            
            for i = 1:ArgumentsCount - 1
                if ~isequaln(size(InputArgumentsList{i}),size(InputArgumentsList{i+1}))
                    error('Dimension of input arguments does not equal.');
                end
            end
        end
        
        function obj = ConcatnateArguments(obj,InputArgumentsList)
            obj.CellCountainer = InputArgumentsList;
        end
    end
    methods
        function obj = Tuple(Vector,varargin)
            if nargin == 0
                obj.CellCountainer = {};
            elseif nargin == 1
                if iscell(Vector)
                    obj.CellCountainer = Vector;
                else
                    error('Only cell array is supported.');
                end
            else
                obj = obj.CheckInputDimensions([{Vector};varargin(:)]);
                obj = obj.ConcatnateArguments([{Vector};varargin(:)]);
            end
        end

    end
    
end
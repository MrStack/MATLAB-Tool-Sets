function tests = testTuple
tests = functiontests(localfunctions);
end

function testArg0(testCase)
aTuple = Tuple();
verifyEqual(testCase,aTuple.CellCountainer,{});
end

function testArg1(testCase)
try
    aTuple = Tuple({[1,3,5]});
catch ExT
    verifyError(testCase,ExT,'DataStructure:Tuple');
end
end

function testArgn(testCase)
try
    aTuple = Tuple([1,2,3],'123');
catch ExT
    verifyError(testCase,ExT,'DataStructure:Tuple');
end
end
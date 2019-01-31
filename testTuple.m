function tests = testTuple
tests = functiontests(localfunctions);
end

function testArg0(testCase)
aTuple = Tuple();
verifyEqual(testCase,aTuple.CellCountainer,{});
end

function testArg1(testCase)
verifyError(testCase,@()Tuple([1,3,5]),'DataStructure:Tuple:Cell');
end

function testArgn(testCase)
verifyError(testCase,@()Tuple([1,2,3],'123','4321'),'DataStructure:Tuple:Dimension');
end
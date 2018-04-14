logTest(2,16)
logTest(2,2^20)
logTest(0.1,2^20)
logTest(12345, 0.12456)

for i = 1:10000
    a = rand * 10000;
    x = rand * 10000;
    
    logTest(a,x);
end

fprintf("DONE\n")
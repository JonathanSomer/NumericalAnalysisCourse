function logTest(a, x)

    tol = 10^-8;
    mine = myLog(a,x);
    theirs = log(x) / log(a);
    
    if(abs(mine - theirs) > tol)
        fprintf("ERROR: log_%f(%f) failed!\n\tmine: %f, theirs: %f\n", a,x,mine,theirs)
    end
    fprintf("\nlog_%f(%f): \n", a,x);
    fprintf("mine_y = %.8f \ntrue_y = %.8f \nerr = %.8f\n\n", mine, theirs, log10(abs(mine-theirs)/theirs));
end
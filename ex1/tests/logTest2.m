function logTest2(a, x)

    tol = 10^-8;
    mine = myLog2(a,x);
    theirs = log(x) / log(a);
    
    if(abs(mine - theirs) > tol)
        fprintf("ERROR: log_%f(%f) failed!\n\tmine:   %.8f, \n\ttheirs: %.8f\n", a,x,mine,theirs)
    else
%         fprintf("OK log_%f(%f):\n\tmine:   %.8f, \n\ttheirs: %.8f\n", a,x,mine,theirs)
    end
    fprintf("\nlog_%f(%f): \n", a,x);
    fprintf("mine_y = %.8f \ntrue_y = %.8f \nerr = %.8f\n\n", mine, theirs, log10(abs(mine-theirs)/theirs));
end
# 杜品赫 Synthesis
# 1. Assume that the range of a sequence from {1, . . . , n} to the set of real numbers is represented as an array A, indexed from 1 to n. a) Write a program that tests whether A is one-to-one.
while true
    try
        A=input("give the function as [X1 Y1; X2 Y2]");
        Ax=[];
        Ay=[];
        [X,Y] = size(A);
        for x = 1:X
            Ax=[Ax,A(x,1)];
            Ay=[Ay,A(x,2)];
        end
        s=0;
        uniqAx=length(Ax)-length(unique(Ax));
        uniqAy=length(Ay)-length(unique(Ay));  
        if uniqAx~=0
            s=1;
        end
        if uniqAy~=0
            s=1;
        end
        if length(Ax)~=length(Ay)
            s=1;
        end
        if s==1
            disp(">>>Not one-to-one")
        else
            disp(">>>Is one to one")
        end
    end
end
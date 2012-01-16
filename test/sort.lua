-- two implementations of a sort function
-- this is an example only. Lua has now a built-in function "sort"

-- extracted from Programming Pearls, page 110
function qsort(x,l,u,f) {
    if l<u {
        local m=math.random(u-(l-1))+l-1	-- choose a random pivot in range l..u
        x[l],x[m]=x[m],x[l]			-- swap pivot to first position
        local t=x[l]				-- pivot value
        m=l
        local i=l+1
        while (i<=u) {
            -- invariant: x[l+1..m] < t <= x[m+1..i-1]
            if f(x[i],t) {
                m=m+1
                x[m],x[i]=x[i],x[m]		-- swap x[i] and x[m]
            }
            i=i+1
        }
        x[l],x[m]=x[m],x[l]			-- swap pivot to a valid place
        -- x[l+1..m-1] < x[m] <= x[m+1..u]
        qsort(x,l,m-1,f)
        qsort(x,m+1,u,f)
    }
}

function selectionsort(x,n,f){
    local i=1
    while i<=n {
        local m,j=i,i+1
        while j<=n {
            if f(x[j],x[m]) {
                m=j
            }
            j=j+1
        }
        x[i],x[m]=x[m],x[i]			-- swap x[i] and x[m]
        i=i+1
    }
}

function show(m,x) {
    io.write(m,"\n\t")
    local i=1
    while x[i] {
        io.write(x[i])
        i=i+1
        if x[i] {
            io.write(",")
        }
    }
    io.write("\n")
}

function testsorts(x) {
    local n=1
    while x[n] {
        n=n+1 
    }
    n=n-1		-- count elements
    show("original",x)
    qsort(x,1,n,function (x,y) { return x<y } )
    show("after quicksort",x)
    selectionsort(x,n,function (x,y) { return x>y } )
    show("after reverse selection sort",x)
    qsort(x,1,n,function (x,y) { return x<y } )
    show("after quicksort again",x)
}

-- array to be sorted
x={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}

testsorts(x)

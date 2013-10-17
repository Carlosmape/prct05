#implementacion segun enunciado

def gcd(n, d)
    n1,n2 = n.abs,d.abs
    gcd = 1
    k = 1
    while (k <= n1 and k <= n2)
        if (n1 % k == 0 and n2 % k == 0)
            gcd = k
        end
        k += 1
    end
    return gcd
end

puts gcd(6,3)

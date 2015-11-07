a, b, C = gets.split.map(&:to_i)

rad = (C * Math::PI / 180.0)

S = (a * b) / 2.to_f * Math.sin(rad)
L = a + b + (Math.sqrt(a**2 + b**2 - 2*a*b*Math.cos(rad)))
h = b * Math.sin(rad)

printf("%9.8f\n%9.8f\n%9.8f\n", S, L, h)

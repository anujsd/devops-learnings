def calculate_interest(P, R, T):
    SI = (P * R * T) / 100
    CI = P * (1 + R/100)**T - P
    return SI, CI

P = 100
R = 12.4
T = 11


a,b = calculate_interest(P,R,T)
a = round(a,2)
print(f"SI={a:.2f}, CI={b:.2f}")
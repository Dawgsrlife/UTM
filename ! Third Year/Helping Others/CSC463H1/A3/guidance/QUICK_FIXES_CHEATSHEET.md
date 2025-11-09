# ⚡ QUICK FIXES CHEAT SHEET - Richard & Masaru

## 🚨 CRITICAL ERRORS TO FIX IMMEDIATELY

### Q3: WRONG APPROACH!

**❌ Don't:** Try to reduce arbitrary NP languages to each other  
**✅ Do:** Use P = NP to get a DECIDER, use that decider in your reduction

**The fix (copy this structure):**

```
Given: A ∈ P, A ≠ ∅, A ≠ Σ*, and P = NP

Step 1: A ∈ NP (since P = NP)

Step 2: For any L ∈ NP:
  - L ∈ P (since P = NP)
  - So ∃ polytime decider M_L for L

Reduction f(x):
  Run M_L(x)
  If accept: return y_yes ∈ A
  If reject: return y_no ∉ A

This is polytime and x ∈ L ⟺ f(x) ∈ A ✓
```

**Impact:** Saves you 8-10 points!

---

### Q4 co-NP: THE MISSING PIECE

**Certificate for (m,n) ∈ co-INT-FACT** (m has NO divisor in (1,n)):

**Three cases:**

1. **m = 1:** Certificate is just "m=1"
2. **m prime, n > m:** Certificate is "m is prime" (verify with AKS)
3. **m composite, smallest factor ≥ n:** Certificate is full factorization

**Key:** Cite AKS primality test ∈ P (Agrawal-Kayal-Saxena, 2002)

**Impact:** Saves you 5 points!

---

## ✅ QUICK CORRECTNESS CHECKS

### Q1:

- [ ] Says "infinite subset" not just "INCOMP"
- [ ] Shows K(sᵢ) = O(log i) via enumeration
- [ ] Picks sⱼ with |sⱼ| > log j

### Q2:

- [ ] Binary exponentiation algorithm written out
- [ ] Time = O(log b) iterations × O(n²) per iteration = O(n³)

### Q3:

- [ ] Uses P = NP to get decider M_L
- [ ] Reduction uses M_L, not trying to reduce L₁ to L₂ directly
- [ ] Maps to fixed strings y_yes and y_no

### Q4 NP:

- [ ] Certificate is divisor d with 1 < d < n
- [ ] Verify d|m in polytime

### Q4 co-NP:

- [ ] Three cases covered
- [ ] Cites AKS primality test
- [ ] Justifies certificate size is polynomial

---

## 📊 Point Distribution

| Question    | Your Current | After Fix | Difference |
| ----------- | ------------ | --------- | ---------- |
| Q1          | ~8/10        | 10/10     | +2         |
| Q2          | ~9/10        | 10/10     | +1         |
| Q3          | ~2/10        | 10/10     | **+8**     |
| Q4a (NP)    | 5/5          | 5/5       | 0          |
| Q4b (co-NP) | 0/5          | 5/5       | **+5**     |
| **TOTAL**   | **~24/40**   | **40/40** | **+16**    |

**You're leaving 16 points on the table without these fixes!**

---

## ⏱️ Time Budget

- **Q3 rewrite:** 45 minutes
- **Q4 co-NP:** 30 minutes
- **Q1 precision fixes:** 20 minutes
- **Q2 detail additions:** 15 minutes
- **Polish:** 30 minutes

**Total:** ~2.5 hours to go from ~60% to 100%

---

## 🎯 Priority Order

1. **FIX Q3** (saves 8 points) - DO THIS FIRST
2. **FIX Q4 co-NP** (saves 5 points) - DO THIS SECOND
3. **Polish Q1** (saves 2 points)
4. **Add detail to Q2** (saves 1 point)

---

## 💬 If You Get Stuck

**Q1:** Think "enumeration gives me a short description (the index)"  
**Q2:** Just write the standard binary exp algorithm  
**Q3:** Think "P = NP means I can DECIDE, then use that decision"  
**Q4:** Think "primality is in P (AKS), factorization can be verified"

---

**Use the full guidance doc for details. This is just your emergency reference!**

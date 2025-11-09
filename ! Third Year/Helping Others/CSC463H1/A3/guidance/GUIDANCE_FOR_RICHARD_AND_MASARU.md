# 🎓 CSC463H1 A3 - Guidance for Richard & Masaru

**Target Grade:** 40/40 (100%)  
**Your Current Understanding:** Good foundations, need specific guidance on proof details

---

## 📊 Your Current Status Analysis

### ✅ Q1: Incompressible Strings

**Your understanding:** "Same as showing INCOMP is not TR"  
**Status:** ⚠️ Close, but needs precision  
**Grade Risk:** Could lose 2-3 points without clarification

### ✅ Q2: MODEXP ∈ P

**Your understanding:** "Binary exp makes a^b polynomial"  
**Status:** ✅ Correct foundation  
**Grade Risk:** Minimal if you execute properly

### ⚠️ Q3: P = NP Completeness

**Your understanding:** "Map two arbitrary NP languages"  
**Status:** ❌ Incorrect approach—this won't work!  
**Grade Risk:** Could lose 5-7 points with current approach

### ❌ Q4: INT-FACT ∈ NP ∩ co-NP

**Your understanding:** "coNP solution not yet found"  
**Status:** ❌ Missing critical component  
**Grade Risk:** Will lose 5 points on co-NP part

---

## 🚨 CRITICAL CORRECTIONS NEEDED

### Q1: The Precision You're Missing

**❌ DON'T SAY:** "Proof is same as showing INCOMP is not TR"

**✅ DO SAY:** "We show no INFINITE SUBSET of incompressible strings is TR"

**Why this matters:**

- The set INCOMP itself may or may not be TR (that's a different question)
- We're specifically proving about INFINITE subsets
- If you conflate these, you'll lose points for imprecision

**Key Proof Structure (use this EXACTLY):**

1. Assume for contradiction: infinite subset S ⊆ INCOMP is TR
2. Then S is enumerable (dovetail M that recognizes S)
3. Get enumeration: s₁, s₂, s₃, ...
4. Compression scheme: K(sᵢ) ≤ c_M + log i + c_P = O(log i)
5. But sᵢ ∈ INCOMP means K(sᵢ) ≥ |sᵢ|
6. Since S is infinite, can pick sⱼ with |sⱼ| > log j → contradiction!

**Common mistake to avoid:** Don't claim all of INCOMP is not TR. We're only claiming no infinite TR subset exists.

---

### Q2: You're On Track, But Watch These Details

**✅ You got the idea:** Binary exponentiation works

**But make sure you:**

1. **Define the algorithm EXPLICITLY:**

   ```
   result = 1
   base = a mod p
   For each bit bᵢ of b (from LSB to MSB):
       if bᵢ = 1: result = (result × base) mod p
       base = (base × base) mod p
   return (result == c mod p)
   ```

2. **Time complexity breakdown:**

   - Number of bits in b: O(log b) = O(n) where n is total input size
   - Each iteration: 2 multiplications of O(n)-bit numbers = O(n²)
   - Total: O(n) × O(n²) = O(n³) = polynomial ✓

3. **Don't forget edge cases:**
   - p = 0: reject (undefined)
   - p = 1: always accept (everything ≡ 0 (mod 1))

**Grade impact:** With these details, you'll get 10/10. Without them, maybe 7-8/10.

---

### Q3: YOUR APPROACH IS WRONG - FIX THIS NOW! 🚨

**❌ WHAT YOU'RE TRYING:** "Map two arbitrary NP languages to each other"

**Why this fails:**

- You CAN'T map two arbitrary NP languages to each other without P = NP
- That's literally the whole point of NP-completeness being non-trivial!
- This approach will get you 0-2 points out of 10

**✅ CORRECT APPROACH:**

Under assumption P = NP, here's what you actually prove:

**Given:**

- A ∈ P (and A ≠ ∅, A ≠ Σ\*)
- P = NP (assumption)

**To show:** A is NP-complete

**Step 1:** A ∈ NP  
_Proof:_ A ∈ P and P = NP, so A ∈ NP ✓

**Step 2:** Every L ∈ NP reduces to A  
_Proof:_

- Take arbitrary L ∈ NP
- Since P = NP, we have L ∈ P
- So there exists polytime TM M_L that DECIDES L
- Pick fixed strings: y_yes ∈ A (exists since A ≠ ∅)
  y_no ∉ A (exists since A ≠ Σ\*)

**Reduction f:**

```
f(x):
    Run M_L on x
    If M_L accepts: return y_yes
    If M_L rejects: return y_no
```

**Why this works:**

- f is polytime: runs M_L (polytime) + outputs fixed string
- x ∈ L ⟺ M_L accepts x ⟺ f(x) = y_yes ⟺ f(x) ∈ A ✓

**The key insight:** When P = NP, we can DECIDE any NP language in polytime, so we can use that decision to build the reduction!

**Grade impact:**

- Current approach: 0-2/10
- Corrected approach: 10/10

---

### Q4: The co-NP Part You're Stuck On 🙏

**You have NP:** ✅ Certificate is divisor d with 1 < d < n and d|m

**For co-NP, here's your hint (and solution):**

**The complement is:** (m,n) ∈ INCOMP̄ means m has NO divisor in (1,n)

**Certificate strategy - THREE CASES:**

**Case 1:** m = 1

- Certificate: just "m = 1"
- Verify: check m = 1 and n ≥ 2

**Case 2:** m is PRIME and n > m

- Certificate: "m is prime"
- Verify: run AKS primality test (polynomial time!) and check n > m

**Case 3:** m is COMPOSITE with smallest prime factor p ≥ n

- Certificate: complete prime factorization m = p₁^e₁ · ... · p_k^e_k
- Verify:
  - Each pᵢ is prime (AKS test - polynomial)
  - Product equals m (polynomial multiplication)
  - min(p₁, ..., p_k) ≥ n (polynomial comparison)

**Why this works:**

- If (m,n) ∈ INCOMP̄, exactly one of these cases applies
- Certificate size: O(log² m) = polynomial (at most log m prime factors)
- Verification: all polynomial-time operations

**Key fact you MUST cite:** AKS primality test (2002) shows PRIMES ∈ P

**Common pitfall:** Don't try to give "all non-divisors" as certificate—that's exponential!

**Grade impact:**

- Without this: 5/10 (lose all co-NP points)
- With this: 10/10

---

## 📝 Proof Writing Tips for Full Marks

### 1. **Always Define Before Using**

```latex
\begin{definition}
A string x is incompressible if K(x) ≥ |x|.
\end{definition}
```

### 2. **State Assumptions Explicitly**

```latex
Assume for contradiction that...
Assume P = NP...
```

### 3. **Mark Major Proof Steps**

```
Step 1: Show A ∈ NP
Step 2: Show every L ∈ NP reduces to A
```

### 4. **Justify All Claims**

Don't just say "clearly" or "obviously"—prove it!

### 5. **Conclude Explicitly**

```
Therefore, no infinite subset of incompressible
strings is Turing recognizable. ∎
```

---

## 🎯 Grade Optimization Checklist

### Question 1: Incompressible Strings

- [ ] Clearly state "no INFINITE subset" (not just "INCOMP not TR")
- [ ] Show enumeration step explicitly
- [ ] Derive K(sᵢ) = O(log i) with all constants shown
- [ ] Pick sⱼ with |sⱼ| > log j for contradiction
- [ ] **Expected: 10/10**

### Question 2: MODEXP ∈ P

- [ ] Write out binary exponentiation algorithm step-by-step
- [ ] Count iterations: O(log b) = O(n)
- [ ] Cost per iteration: O(n²)
- [ ] Total: O(n³) = polynomial
- [ ] **Expected: 10/10**

### Question 3: P = NP ⟹ Everything NP-complete

- [ ] **USE THE CORRECTED APPROACH ABOVE**
- [ ] Show A ∈ P implies A ∈ NP (under P = NP)
- [ ] For any L ∈ NP, use its decider M_L in the reduction
- [ ] Map yes-instances to y_yes ∈ A, no-instances to y_no ∉ A
- [ ] Prove reduction is polytime and correct
- [ ] **Expected: 10/10**

### Question 4a: INT-FACT ∈ NP

- [ ] Certificate: divisor d
- [ ] Verify: 1 < d < n and d|m in polytime
- [ ] **Expected: 5/5**

### Question 4b: INT-FACT ∈ co-NP

- [ ] **USE THE THREE-CASE CERTIFICATE ABOVE**
- [ ] Case 1: m = 1
- [ ] Case 2: m prime, n > m (use AKS!)
- [ ] Case 3: factorization with min factor ≥ n
- [ ] Justify certificate size is O(log² m)
- [ ] **Expected: 5/5**

---

## 🚀 Action Plan for You Two

### Immediate (Next 30 Minutes):

1. **Richard:** Rewrite Q3 using the CORRECTED approach
2. **Masaru:** Work out Q4 co-NP proof using the three cases

### Next (1-2 Hours):

3. Write up Q1 being VERY careful about "infinite subset" language
4. Write up Q2 with explicit algorithm and complexity breakdown

### Polish (Final Hour):

5. Add formal definitions for all terms
6. Check every proof has clear structure (assumption → steps → conclusion)
7. Verify all complexity bounds are properly derived

---

## 💡 Key Insights Summary

**Q1:** Enumeration gives compression via index (O(log i) vs |sᵢ|)

**Q2:** Binary exponentiation processes log b bits, O(n²) per bit

**Q3:** P = NP means we can USE a polytime decider inside our reduction

**Q4 (co-NP):** Three cases based on structure of m; use AKS for primality

---

## 📞 Quick Reference for Stuck Moments

**If stuck on Q1:** Remember—INFINITE subset, not all of INCOMP

**If stuck on Q2:** Just implement binary exponentiation clearly

**If stuck on Q3:** DON'T reduce between arbitrary NP languages—use the DECIDER!

**If stuck on Q4:** Three cases: m=1, m prime, m composite with big factor

---

## 🎓 Final Encouragement

You two have good foundations! The main issues are:

1. **Q1:** Just need more precision in language
2. **Q2:** You're on track, just write it out
3. **Q3:** **MAJOR FIX NEEDED** - use the approach I gave
4. **Q4:** **MISSING PIECE** - use the three-case certificate

**With these corrections, you'll go from ~70% to 100%.**

**Time to implement: 3-4 hours of focused work**

**Expected final grade: 38-40/40 (95-100%)**

---

## 📂 Reference Solution

See `CSC463_A3_Solutions.tex` in this same folder for the complete, correct solutions. Use it as a reference for:

- Proof structure
- Level of detail needed
- How to write reductions
- Certificate constructions

**But write in your own words—don't copy verbatim!**

---

**Good luck! You've got this! 🚀**

_- Alex (who just debugged these same proofs)_

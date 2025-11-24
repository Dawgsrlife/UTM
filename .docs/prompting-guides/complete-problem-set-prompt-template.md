# Complete Problem Set Prompt Template

## Universal Framework for Achieving 100% Marks

---

## Overview

This prompt template provides a comprehensive framework for completing problem sets across any course with maximum accuracy and professionalism. It ensures systematic auditing, proper academic presentation, and alignment with course material.

---

## Complete Prompt Template

```
I need your help completing a problem set to achieve 100% marks.

## Materials Provided

### 1. Assignment Instructions
[Paste the complete problem set PDF text or attach the file]

### 2. Lecture Notes
[Paste all relevant lecture notes covering the material, or attach files]

### 3. Course Context Document
[If available, paste course syllabus, previous assignments, or any additional context]

## Requirements

**Goal:** Achieve maximum marks through:
1. Mathematically rigorous and technically correct solutions
2. Professional presentation matching the expected academic level for this course
3. Complete alignment with provided lecture material
4. Natural academic voice WITHOUT AI markers, formulaic language, or visible AI thinking

## Critical Writing Standards

### REQUIRED:
- Write like a student at the appropriate academic level for this course
- Use natural academic transitions ("We show that...", "Consider the case...", "By construction...")
- Present proofs with clear structure (theorem statements, proof environments, QED)
- Include rigorous mathematical justification for every claim
- Use proper mathematical notation consistently
- Break complex arguments into clear cases when needed
- Provide intuition before formal proofs where appropriate
- Reference specific lecture content and techniques

### STRICTLY FORBIDDEN:
- **AI thinking markers:** "Wait—", "Hmm,", "Let me think", "Actually,", "It turns out"
- **Meta-commentary:** "This shows that", "We can see that", "Interestingly", "Observe that"
- **Formulaic AI transitions:** "Moreover", "Furthermore", "Additionally" (unless naturally appropriate)
- **Hedging phrases:** "arguably", "potentially", "essentially" (unless mathematically precise)
- **Obvious statements:** "clearly", "obviously", "evidently" (unless pedagogically necessary)
- **Corporate tone:** "leverage", "utilize", "robust solution"
- **Any visible thought process or self-correction in the final document**

## Output Requirements

- Provide complete, polished solutions only
- Never include rough work, drafts, or thinking process
- All text must be final, professional, submission-ready
- No placeholder comments like "TODO", "FIXME", "Check this"
- No meta-commentary about the solution process



## Solution Structure

### For Each Question:

1. **Include the complete question text** from the assignment in your submission
   - Use question boxes or similar formatting to clearly delineate the problem statement
   - Include all context, definitions, examples, and instructions provided
   - This ensures markers can grade without cross-referencing the original assignment
2. **Read and understand** the problem completely
3. **Identify the core concept** from lecture notes (reduction, approximation, NP-completeness, etc.)
4. **Plan the solution structure** before writing:
   - What theorem/algorithm are we proving/designing?
   - What lecture techniques apply?
   - What are the key steps?
5. **Write the solution** with:
   - Clear statement of what's being proven/designed
   - Rigorous mathematical proofs with all steps justified
   - Proper notation (define all variables)
   - Case analysis where needed
   - Complexity analysis (time/space)
6. **Audit against lecture notes** to ensure:
   - Terminology matches course usage
   - Proof techniques follow course methodology
   - All claims are properly justified per course standards

## Systematic Workflow

### Phase 1: Setup & Analysis
1. Read all questions and identify lecture topics for each
2. Create solution outline for each question
3. Identify which lecture weeks/topics apply to each question
4. Note any special requirements (pseudocode, proof style, etc.)

### Phase 2: Solution Development
For each question:
1. Write complete solution following course methodology
2. Include all required components (proofs, algorithms, analysis)
3. Add clear explanations and justifications
4. Ensure mathematical rigor at every step

### Phase 3: Technical Audit
1. **Correctness:** Verify all mathematical claims are sound
2. **Completeness:** Check all parts of each question are addressed
3. **Lecture alignment:** Confirm techniques match course material
4. **Notation:** Ensure consistency with course conventions
5. **Edge cases:** Verify all cases are handled

### Phase 4: Presentation Audit
1. **Voice:** Natural undergraduate academic writing
2. **Structure:** Clear theorem statements, proof environments
3. **Clarity:** No ambiguous statements, all variables defined
4. **Professional:** Proper LaTeX formatting, no typos
5. **AI markers:** Remove any formulaic or robotic phrasing
6. **AI thinking:** Remove all visible thought process, meta-commentary, self-corrections

### Phase 5: Final Verification
1. Compile document and verify page count
2. Check all marks add up correctly
3. Verify no TODO/FIXME markers remain
4. Confirm all questions answered completely
5. Final readthrough for any remaining issues

## Specific Technical Requirements

### For Algorithm Questions:
- Provide pseudocode with clear function signatures
- Include type contracts for parameters and return values
- Add comments explaining key steps
- Prove correctness (loop invariants, induction, etc.)
- Analyze runtime complexity with detailed justification (see complexity analysis requirements below)
- Consider edge cases explicitly

### For Runtime/Complexity Analysis Questions:
**CRITICAL:** Runtime analysis requires substantial detail proportional to mark value. Never provide one-sentence complexity statements.

**Minimum requirements for ANY complexity analysis:**
- **Identify all major operations** (initialization, loops, per-iteration costs)
- **Bound loop iterations** with explicit reasoning (why at most n? why exactly log n?)
- **Break down per-iteration cost** into component operations with individual complexities
- **Identify dominant cost** and explain why other costs are absorbed
- **Show final calculation** with clear arithmetic (e.g., n × O(m) = O(mn))
- **State assumptions** about data structures if relevant (hash sets for O(1) lookup, etc.)

**Proportional detail guidelines:**
- **1 mark:** 2-3 paragraphs minimum, cover initialization + loop bound + dominant cost
- **2 marks:** 4-6 paragraphs minimum, itemized breakdown of per-iteration costs with 3-5 operations
- **3+ marks:** Full page analysis, multiple loop levels, amortized analysis if applicable

**Example structure for 2-mark runtime question:**
```

We analyze the runtime by examining each operation:

Initialization: [specific operations] takes O(?) time because [reason].

Main Loop: Executes at most [bound] iterations because [explicit reasoning about
why this bound holds, what decreases/increases per iteration].

Per-Iteration Cost:

- Operation 1: O(?) because [detailed reason]
- Operation 2: O(?) because [detailed reason]
- Operation 3: O(?) because [detailed reason]
- [Continue for all significant operations]

Dominant cost per iteration is [operation] at O(?). Other operations total O(?),
which is absorbed because [reason].

Total Runtime: [iterations] × O([per-iteration]) = O([final complexity])

[Optional: Note about data structure assumptions if relevant]

```

**Common failure pattern:** Stating "Loop runs n times, each iteration O(m), so O(nm)" without breaking down what operations cost O(m) or why the loop bound is n. This loses marks for insufficient justification.

### For NP-Completeness Proofs:
- Show problem ∈ NP (certificate + polynomial-time verifier)
- Reduce known NP-complete problem TO target problem
- Verify reduction direction is correct (A ≤_p B means B harder than A)
- Prove reduction function is polynomial-time
- Prove both directions: instance has solution ⟺ reduced instance has solution
- Use gadget constructions where appropriate

### For Approximation Algorithms:
- Define approximation ratio clearly (maximization vs minimization)
- Use proper bounds (ALG/OPT for minimization, OPT/ALG for maximization)
- Employ course-specific techniques (pricing schemes, LP relaxation, etc.)
- Provide both upper and lower bounds where required
- Show tight bounds with constructions

### For Reduction Problems:
- Clearly state the reduction direction
- Define the transformation function explicitly
- Prove polynomial-time transformation
- Prove correctness in both directions (⇒ and ⇐)
- Verify all constraints are preserved

## Audit Checklist

Before declaring completion, verify:

- [ ] **All question text included** from original assignment (not just abbreviated summaries)
- [ ] All questions answered completely
- [ ] All proofs mathematically rigorous
- [ ] All algorithms correct and efficient
- [ ] **All complexity analyses have sufficient detail** (proportional to mark value - see complexity analysis requirements)
- [ ] Natural undergraduate writing voice (use "We show", "We analyze", "Consider", "By construction")
- [ ] No AI markers or formulaic language
- [ ] **No AI thinking visible** (no "Wait—", "Hmm", "Actually", meta-commentary)
- [ ] Proper mathematical notation throughout
- [ ] All lecture techniques properly applied
- [ ] All claims properly justified with explicit reasoning
- [ ] Document compiles without errors
- [ ] Total marks calculated correctly
- [ ] No TODO/FIXME markers remaining
- [ ] All variables and notation defined
- [ ] All cases handled explicitly
- [ ] Professional LaTeX presentation
- [ ] **Zero rough work or thought process in final output**
- [ ] **Runtime analyses break down all operations** (not just state final complexity)

## Output Format

Provide solutions in the format that best matches the assignment (LaTeX, Markdown, etc.).

For LaTeX documents:
- Use proper document structure (documentclass, packages, etc.)
- Include theorem/proof environments (tcolorbox or amsthm)
- Use proper mathematical notation (amsmath)
- Format pseudocode clearly (algorithm2e or listings)
- Compile to verify formatting

## Expected Deliverables

1. Complete solutions for all questions
2. All proofs with full justification
3. All algorithms with pseudocode and analysis
4. Compiled PDF (if LaTeX)
5. Brief summary of key techniques used per question
6. Confirmation of alignment with lecture material

**Note:** Infer output format and special requirements from the provided materials. No need to specify explicitly.

---

## Work Systematically

1. Start with a complete read-through of all materials
2. Create detailed outlines before writing
3. Write one question at a time to completion
4. Audit each question immediately after writing
5. Perform holistic final audit of entire document
6. Make final polish and presentation improvements

## Success Criteria

- Technical correctness: 100%
- Lecture alignment: 100%
- Professional presentation: Matches expected academic level
- Completeness: All questions fully addressed
- **Target: [TOTAL MARKS]/[TOTAL MARKS] marks**
```

---

## How to Use This Template

### Step 1: Gather All Materials

Collect everything needed:

1. **Complete assignment instructions** (copy text from PDF or attach file)
2. **All relevant lecture notes** (copy text or attach files)
3. **Course syllabus** (optional, for additional context)
4. **Any previous work** (if building on existing solutions)

### Step 2: Paste Into Prompt

Start a new session and:

1. **Copy the prompt template** (starting from "I need your help...")
2. **Paste your assignment instructions** in Section 1
3. **Paste all relevant lecture notes** in Section 2
4. **Add any additional context** in Section 3 (syllabus, previous work, etc.)
5. **Launch the session**

### Key Principle

**Let the AI extract the details.** You don't need to manually identify:

- Course codes or names
- Question marks breakdown
- Lecture week numbers
- Topic categorization
- Academic level

The AI will automatically:

- Identify course and assignment from materials
- Parse question structure and marks
- Detect academic level and writing style
- Extract relevant lecture topics
- Apply appropriate methodologies

**Your only job:** Paste the materials. The AI handles the rest.

---

## Why This Template Works

### 1. **Comprehensive Context**

- Provides all necessary materials upfront
- Establishes clear expectations for style and rigor
- Defines success criteria explicitly

### 2. **Systematic Workflow**

- Phases ensure nothing is missed
- Audit checkpoints catch errors early
- Holistic approach prevents fragmentation

### 3. **Quality Assurance**

- Multiple audit phases ensure correctness
- Explicit style guidelines prevent AI markers
- Lecture alignment prevents methodological errors

### 4. **Flexibility**

- Works for any course (CS, Math, Engineering, etc.)
- Adapts to different problem types (proofs, algorithms, analysis)
- Scales to any assignment size

### 5. **Professional Output**

- Natural academic voice
- Rigorous technical content
- Polished presentation

---

## Key Principles for Maximum Marks

### Technical Correctness

- Every claim must be justified
- All proofs must be rigorous
- All algorithms must be correct
- All complexity analyses must be accurate

### Lecture Alignment

- Use techniques taught in course
- Follow proof methodologies from lectures
- Match terminology and notation
- Reference specific concepts appropriately

### Professional Presentation

- Clear structure and organization
- Proper mathematical notation
- Natural academic writing
- No formulaic AI patterns

### Completeness

- Address every part of every question
- Handle all cases explicitly
- Verify all marks accounted for
- Include all required components

---

## Advanced Tips

### For Complex Proofs

- Start with informal intuition
- Formalize step-by-step
- Use clear case analysis
- Verify each implication

### For Algorithm Design

- Begin with high-level strategy
- Refine to detailed pseudocode
- Prove correctness rigorously
- Analyze complexity carefully

### For NP-Completeness

- Always verify reduction direction
- Use gadget constructions systematically
- Prove both directions thoroughly
- Check polynomial-time requirement

### For Approximation Algorithms

- Define ratio clearly (min vs max)
- Use lecture-specific techniques
- Provide tight bounds with constructions
- Verify all inequalities carefully

---

## Example Usage Scenarios

### Scenario 1: Algorithm Design Assignment

```text
I need your help completing a problem set to achieve 100% marks.

## Materials Provided

### 1. Assignment Instructions
[Paste entire PDF text of CSC373 Problem Set 2]

### 2. Lecture Notes
[Paste Week 6 lecture notes on Ford-Fulkerson]
[Paste Week 7 lecture notes on Max-Flow Min-Cut]

### 3. Course Context Document
[Paste course syllabus or previous assignment if helpful]

[Rest of template requirements...]
```

### Scenario 2: Complexity Theory Assignment

```text
I need your help completing a problem set to achieve 100% marks.

## Materials Provided

### 1. Assignment Instructions
[Paste entire Problem Set 3 PDF covering NP-completeness]

### 2. Lecture Notes
[Paste Week 8 notes on P/NP classes and reductions]
[Paste Week 9 notes on approximation algorithms]

[Rest of template requirements...]
```

### Scenario 3: Simple Usage

```text
I need your help completing a problem set to achieve 100% marks.

## Materials Provided

### 1. Assignment Instructions
[Paste problem set]

### 2. Lecture Notes
[Paste all relevant lecture notes]

[Include the full requirements section from template]
```

---

## Iterative Improvement Strategy

### The Multi-Phase Audit Approach

**Don't expect perfection on first pass.** Use iterative refinement:

#### Phase 1: Initial Complete Draft

1. Run the full prompt with all materials
2. Get complete solutions for all questions
3. Don't fix issues yet—let AI finish everything first

#### Phase 2: Focused Technical Audits

For each question individually:

```text
Audit Q[X] against the lecture notes from Week [Y-Z]. Specifically check:
1. Does the proof technique match what's taught in lectures?
2. Are we using the correct terminology from the course?
3. Are all mathematical steps justified per course standards?
4. Fix any technical errors found.
```

**Why individual audits?** Each question requires deep focus. Catching 5 critical errors across 5 questions (one per question) is typical and expected.

#### Phase 3: Comprehensive Lecture Alignment

After individual fixes:

```text
Do a comprehensive audit ensuring all work is correct and completed according to
the involved lecture notes from Week [X] to Week [Y].
```

This catches methodological inconsistencies across questions.

#### Phase 4: Final Polish

Request specific improvements:

```text
- Add type contracts to all pseudocode method signatures
- Fix any formatting issues (e.g., formulas exceeding margins)
- Ensure consistent notation throughout
```

#### Phase 5: Pre-Submission Verification

```text
Do a final check for:
1. Compilation (no errors)
2. All marks present and correct
3. No TODO/FIXME markers
4. No AI thinking markers
5. Professional presentation
```

### Critical Success Patterns

#### Pattern 1: Catch AI Thinking Immediately

**Always do a final read-through yourself.** Look for:

- "Wait—" or "Hmm," (thinking out loud)
- "The key insight" (meta-commentary)
- "Interestingly," "It turns out" (AI observations)
- "Let me think" or "Actually," (self-correction)

**When found, request specific fix:**

```text
URGENT: Remove the AI thinking marker "[exact phrase]" from Q[X].
Rewrite with natural undergraduate analysis using concrete steps instead of meta-commentary.
```

#### Pattern 2: Verify Reduction Directions

For NP-completeness proofs, **always verify:**

```text
In Q[X], confirm the reduction direction is correct.
We need [KNOWN NP-COMPLETE] ≤_p [TARGET], not the reverse.
```

Common error: Reducing target TO known problem instead of known TO target.

#### Pattern 3: Check Both Directions

For reduction correctness proofs:

```text
Verify Q[X] proves both directions:
- (⇒) If original has solution, reduced instance has solution
- (⇐) If reduced instance has solution, original has solution

Check the backward direction especially—it's often weaker.
```

#### Pattern 4: Approximation Ratio Verification

For approximation algorithms:

```text
In Q[X], verify:
1. Approximation ratio defined correctly (ALG/OPT vs OPT/ALG)
2. Both upper and lower bounds provided
3. Construction shows ratio is tight (Θ notation)
```

#### Pattern 5: Contraction Elimination

Academic writing should avoid contractions in formal proofs:

```text
Search document for contractions that weaken formality:
- "We'll" → "We will" or "We show"
- "don't" → "do not"
- "can't" → "cannot"
- "won't" → "will not"
- "isn't/aren't" → "is not/are not"

Fix all instances to maintain formal academic tone.
```

**Why this matters:** Contractions make proofs sound informal or conversational rather than rigorous academic work.

#### Pattern 6: Mathematical Notation Consistency

Ensure consistent use of complexity notation and symbols:

```text
Verify mathematical notation consistency:
1. Complexity bounds: Use Θ(·), O(·), Ω(·) consistently (not mix of Greek/Latin)
2. Set operations: ∈, ⊆, ∪, ∩ used correctly throughout
3. Logic symbols: ∀, ∃, ∧, ∨, ⇒, ⇐ match course conventions
4. Reduction notation: ≤_p written consistently (not mixing formats)
5. Variable naming: Same concepts use same symbols across questions
```

**Why this matters:** Inconsistent notation suggests multiple authors or careless work, reducing credibility.

#### Pattern 7: Runtime Analysis Insufficient Detail

Complexity analysis questions ALWAYS need substantial justification:

```text
Check ALL runtime/complexity analysis sections:
1. Is there itemized breakdown of operations? (not just final answer)
2. Are loop bounds explicitly justified? (why n iterations? why log n?)
3. Are per-iteration costs broken into components? (3-5 bullet points minimum)
4. Is dominant cost identified and explained?
5. Is final calculation shown step-by-step?
6. Are data structure assumptions stated if relevant?

For 2+ mark questions: Expect 20-40 lines minimum, not 5 lines.
```

**Common failure:** Stating "loop runs n times with O(m) per iteration so O(nm)" without explaining WHY loop runs n times or WHAT operations cost O(m). This pattern loses marks for insufficient justification.

**Fix:** Break down into: (1) Initialization cost, (2) Loop bound justification, (3) Per-iteration itemized breakdown with 3-5 operations, (4) Dominant cost identification, (5) Final calculation shown explicitly.

### Advanced Prompting Techniques

#### Technique 1: Contextual Auditing

Instead of generic "check for errors," provide context:

```text
Q[X] uses a pricing scheme for approximation. According to Week [Y] lectures,
pricing schemes work by [method]. Verify our proof follows this methodology
and the averaging argument is sound.
```

#### Technique 2: Specify Expected Fixes

Tell AI what you expect to find:

```text
I suspect Q[X] has issues with:
- Clause gadget indices (check which variable elements are used)
- Backward direction partition logic (verify the case analysis)

Audit specifically for these and fix as needed.
```

#### Technique 3: Compilation-Driven Debugging

If document formatting breaks:

```text
Line [X] in Q[Y] exceeds the tcolorbox by [N] characters.
Split the formula across multiple lines while maintaining mathematical correctness.
```

#### Technique 4: Lecture-Specific Validation

Reference specific lecture content:

```text
Week [X] lectures define NP-completeness as:
1. Show ∈ NP via verifier
2. Reduce known NP-complete TO target

Verify ALL NP-completeness proofs follow this exact structure.
```

### Quality Control Checklist

#### Before Requesting Improvements

- [ ] Read through entire document yourself
- [ ] Note ALL issues (don't fix one at a time)
- [ ] Check lecture alignment for each question
- [ ] Verify mathematical correctness personally
- [ ] Look for AI markers in final output

#### When Requesting Fixes

- [ ] Be specific about what's wrong
- [ ] Provide line numbers or section references
- [ ] Reference lecture content when relevant
- [ ] Request verification after fixes
- [ ] Ask for compilation check

#### Before Final Submission

- [ ] Compile document (check for errors)
- [ ] Verify all marks present (should sum to total)
- [ ] Search for AI markers (grep for common phrases)
- [ ] Search for contractions (scan for apostrophes in formal proofs)
- [ ] Check mathematical notation consistency
- [ ] Check no incomplete work (TODO, FIXME, ???)
- [ ] Verify professional presentation

### Comprehensive Audit Methodology

When you request "one last audit" or final verification, structure it systematically:

#### Step 1: Determine Audit Scope

Don't just ask "check for errors." Define what needs auditing:

```text
Perform comprehensive final audit covering:
1. AI markers and thinking patterns
2. Technical correctness (reductions, approximations, proofs)
3. Proof completeness (both directions for all bi-directional proofs)
4. Natural voice (contractions, formality, academic tone)
5. Mathematical notation consistency
6. Formatting and presentation quality
```

#### Step 2: Execute Systematic Scans

Use targeted searches to catch specific issues:

**AI Marker Scan:**

```text
Search for: "Wait—", "Hmm,", "The key insight", "Let me",
            "I think", "It turns out", "Observe that"
Report: Number of matches found and locations
```

**Contraction Scan:**

```text
Search for: "'ll", "'ve", "'t", "'s", "'re"
Report: All contractions in formal proof sections
```

**Notation Consistency Scan:**

```text
Check: All complexity bounds use same format (Θ vs Theta)
       All set notation consistent (∈ vs element-of)
       All reduction notation uniform (≤_p format)
```

**Proof Completeness Scan:**

```text
For each reduction/equivalence proof:
- Verify (⇒) direction present and complete
- Verify (⇐) direction present and complete
- Check both directions properly justified
```

**Runtime Analysis Detail Scan:**

```text
For each complexity/runtime question:
- Count lines in analysis (should be proportional to marks: 1 mark = 10+ lines, 2 marks = 20+ lines)
- Verify initialization costs stated explicitly
- Verify loop bounds justified (not just asserted)
- Verify per-iteration breakdown exists with itemized operations
- Verify dominant cost identified and other costs explained as absorbed
- Verify final calculation shown step-by-step (not just stated)
- Check if data structure assumptions needed and stated

RED FLAG: Any runtime analysis under 10 lines for 1+ marks is insufficient detail.
```

#### Step 3: Compilation Verification

After any fixes, always verify document still compiles:

```text
After making fixes:
1. Compile document
2. Check for new errors introduced
3. Verify page count unchanged (or expected)
4. Confirm no formatting breaks
```

#### Step 4: Technical Verification

Cross-reference against course material:

```text
For each question:
- Reduction directions correct (A ≤_p B = B at least as hard as A)
- Approximation ratios correct (ALG/OPT for min, OPT/ALG for max)
- Proof techniques match lecture methodology
- Terminology matches course usage
```

### Common Pitfalls and Solutions

#### Pitfall 1: Accepting First Draft

**Problem:** First draft often has 3-5 technical errors
**Solution:** Plan for 2-3 rounds of focused audits per question

#### Pitfall 2: Generic Audit Requests

**Problem:** "Check for errors" finds nothing
**Solution:** "Audit Q3 pricing scheme against Week 9 lecture method"

#### Pitfall 3: Fixing Issues Individually

**Problem:** Makes 10 separate edit requests
**Solution:** List all issues, request fixes in batch

#### Pitfall 4: Skipping Lecture Alignment

**Problem:** Technically correct but methodologically wrong
**Solution:** Always verify against provided lecture notes

#### Pitfall 5: Missing AI Thinking

**Problem:** Submitting work with "Wait—" or "The key insight"
**Solution:** ALWAYS do final search for AI markers before submission

#### Pitfall 6: Overlooking Contractions

**Problem:** Formal proofs contain "We'll", "don't", "can't"
**Solution:** Scan for apostrophes, replace contractions with full forms

#### Pitfall 7: Inconsistent Notation

**Problem:** Mixed use of Θ vs Theta, different reduction arrow styles
**Solution:** Establish notation conventions early, verify consistency in final pass

#### Pitfall 8: Insufficient Runtime Analysis Detail

**Problem:** Runtime questions answered in 5 lines when 2+ marks allocated
**Solution:** Use proportional detail guidelines - 2 marks = 20-40 lines with itemized breakdown
**Check:** Count lines in analysis. If under 10 lines per mark, expand with operation breakdown

### Effective Prompt Patterns

#### For Initial Generation

```text
Complete this problem set achieving 100% marks.
[Paste full assignment + lecture notes + requirements]
```

#### For Focused Audits

```text
Audit Q[N] for [specific issue] according to Week [X] lectures.
Fix any errors found and verify correctness.
```

#### For Comprehensive Checks

```text
Comprehensive audit ensuring all work correct and aligned with
Week [X-Y] lectures. Check each question's methodology.
```

#### For Specific Fixes

```text
In Q[N] line [M], [describe specific issue].
Fix this while maintaining [constraints].
```

#### For Final Verification

```text
Final pre-submission check:
1. Compilation status
2. All marks present
3. No TODO/FIXME/AI markers
4. Professional presentation
Report status for each.
```

### Time Management Strategy

**Typical Timeline for Problem Set Completion:**

**Session 1 (1-2 hours):** Initial generation + first read

- Generate complete first draft
- Read through personally
- Note obvious issues

**Session 2 (2-3 hours):** Focused technical audits

- Audit each question individually against lectures
- Fix technical errors (expect 3-5 across all questions)
- Verify fixes compile and are correct

**Session 3 (1 hour):** Comprehensive alignment

- Check all questions follow course methodology
- Ensure consistent terminology and notation
- Verify all lecture techniques properly applied

**Session 4 (30 minutes):** Final polish

- Add type contracts, fix formatting
- Remove AI markers if any found
- Eliminate contractions from formal sections
- Verify mathematical notation consistency
- Final compilation and verification

**Session 5 (15 minutes):** Pre-submission check

- Systematic audit: AI markers, contractions, notation
- Verify marks, check TODOs
- Compilation verification
- Final read-through
- Ready to submit

### Success Metrics

**You've achieved 100% quality when:**

- All technical proofs verified against lectures
- All reduction directions confirmed correct
- All approximation ratios proven with bounds
- Zero AI thinking/meta-commentary in output
- Zero contractions in formal proof sections
- Mathematical notation consistent throughout
- Natural undergraduate academic voice maintained
- Document compiles cleanly without errors
- All marks accounted for (sum equals total)
- No incomplete work markers (TODO/FIXME)
- Professional LaTeX presentation
- Ready to submit with confidence

---

## Final Notes

This template has been refined through successful completion of multiple problem sets achieving 100% marks (including CSC373 PS3: 56/56 + 2 bonus). Key success factors:

1. **Complete context** prevents hallucination and ensures accuracy
2. **Systematic workflow** prevents missed requirements
3. **Multiple iterative audits** catch errors at every level (expect 3-5 rounds)
4. **Natural academic voice** ensures professional presentation without contractions or AI markers
5. **Lecture alignment** guarantees methodological correctness
6. **Notation consistency** demonstrates attention to detail and care
7. **Comprehensive final audit** systematically verifies all quality dimensions
8. **Individual + holistic audits** catch both micro and macro issues

### The Reality of AI-Assisted Problem Sets

**Expect imperfection initially.** AI will:

- Make 3-5 technical errors per problem set (normal)
- Occasionally use wrong reduction directions (catch in audit)
- Sometimes miss edge cases in proofs (fix in focused review)
- Rarely include AI thinking markers (remove in final pass)
- Occasionally use contractions in formal proofs (fix in polish phase)
- Sometimes inconsistent with mathematical notation (standardize in final audit)

**Your role is iterative refinement, not blind acceptance.** Use the multi-phase audit strategy:

1. Generate complete draft
2. Fix technical errors per question
3. Verify comprehensive alignment
4. Polish presentation (eliminate contractions, standardize notation)
5. Systematic final audit (AI markers, contractions, notation consistency)
6. Compilation verification

This approach achieves 100% marks consistently while maintaining academic integrity through your oversight and validation at every step.

Use this template as your foundation, adapt to specific course needs, and achieve consistent excellence across all assignments.

---

#### Pattern 8: Rigorous Final Audit Methodology

**CRITICAL**: Always perform comprehensive final audit before submission. Use systematic scanning approach:

```text
Perform comprehensive final audit with the following scans:

1. AI Marker Scan:
   Search for: "Wait—", "Hmm,", "The key insight", "Let me", "I think", "It turns out"
   Action: Remove ALL instances, replace with natural academic language

2. Contraction Scan:
   Search for: "'ll", "'ve", "'t", "'re", "'s" in formal proof sections
   Action: Replace with full forms (e.g., "don't" → "do not")

3. Notation Consistency Scan:
   Check: Complexity notation (Θ vs Theta), set operations (∈), reduction arrows (≤_p)
   Action: Standardize all mathematical notation

4. Proof Completeness Scan:
   For each reduction/equivalence:
   - Verify (⇒) direction present and complete
   - Verify (⇐) direction present and complete
   Action: Fix any missing or weak directions

5. Runtime Analysis Detail Scan:
   For each complexity question:
   - Count lines (should be proportional to marks: 1 mark = 10+ lines, 2 marks = 20+ lines)
   - Verify initialization costs stated
   - Verify loop bounds justified (not just asserted)
   - Verify per-iteration breakdown exists
   - Verify dominant cost identified
   Action: Expand any insufficient analyses

6. Lecture Alignment Scan:
   Cross-reference each solution against provided lecture notes
   - Check reduction directions correct
   - Check approximation ratios correct
   - Check proof techniques match course methodology
   Action: Fix any methodological deviations

7. Tone Consistency Scan:
   Read through entire document checking for:
   - Formulaic AI transitions ("Moreover", "Furthermore", "Additionally")
   - Verbose itemizations that sound like AI checklists
   - Inconsistent voice (some sections too formal, others too casual)
   Action: Adjust to consistent undergraduate academic voice

Report findings with line numbers and specific issues identified.
```

**Example audit finding:**

```text
ISSUE FOUND: Q3(d) Runtime Analysis
- Line 590-625: Uses verbose itemized breakdown with "Step 3a:", "Step 3b:", etc.
- Tone mismatch: Sounds like AI checklist, not natural undergraduate analysis
- Compare to Q2/Q4 analyses which use paragraph-based explanations
- FIX: Consolidate into 3 concise paragraphs maintaining same technical content
```

**When to use this pattern:**

- ALWAYS before final submission
- After making any late-stage edits
- When receiving feedback about "AI-like" writing
- When user requests "one last check" or "final audit"

**Success criteria:**
All 7 scans return zero critical issues before submission.

---

#### Pattern 9: Mathematical Verification After Fixes

**CRITICAL**: After applying any fixes (especially to proofs or mathematical arguments), conduct rigorous mathematical verification to ensure fixes are CORRECT and haven't introduced new errors.

**Verification Protocol:**

1. **Original Issue Analysis**

   - What was the claimed error?
   - Was it presentation-only (style) or mathematical (logic)?
   - What specific lines were affected?

2. **Fix Impact Assessment**

   - What exactly changed in the fix?
   - Did it alter mathematical logic or only presentation?
   - Are all mathematical claims still valid?

3. **Line-by-Line Mathematical Verification**

   - For proof fixes: Verify each step of new reasoning
   - For reduction fixes: Check element accounting, both directions
   - For algorithm fixes: Verify complexity bounds unchanged
   - Use lecture material as ground truth

4. **Cross-Reference Against Course Material**

   - Does fix align with techniques taught in course?
   - Are standard results (e.g., 2-approximation for knapsack) preserved?
   - No references to material outside course scope?

5. **Integration Check**
   - Does fix interact correctly with surrounding proofs?
   - Are variable names, notation still consistent?
   - Do both proof directions still work together?

**Example verification questions:**

- **Q1 (3DM):** If we removed "Wait—" marker, did we preserve the complementary triple availability argument? Check: When truth triples chosen, false triples excluded → elements available for reuse ✓

- **Q2 (Bin Packing Case 2):** If we added algebraic derivation, is each step valid? Check: α ≤ σ-t AND σ-α ≤ σ-t → σ ≤ 2(σ-t) → 2t ≤ σ ✓ (algebra sound)

- **Q4 (Knapsack):** If we changed reasoning for w_e ≤ W, is new argument valid? Check: If w_e > W → can't contribute to FRAC → but FRAC = value_1 + (fraction of e) → contradiction ✓ (fractional relaxation property correct)

**Red flags to check:**

- ❌ Fix changed element accounting in reduction (count elements before/after)
- ❌ Fix removed a case in case analysis (verify all cases still covered)
- ❌ Fix used technique not covered in course lectures
- ❌ Fix introduced notation inconsistency
- ❌ Fix made one direction work but broke the other direction

**When to use this pattern:**

- After ANY mathematical fix before submission
- When audit identified "logic gap" or "false claim"
- When user requests verification that fixes are correct
- Before declaring "ready for submission"

**Output format:**

Create verification document with:

1. Each fix listed with before/after comparison
2. Mathematical soundness check with step-by-step reasoning
3. Course alignment verification
4. Final verdict: ✅ CORRECT or ❌ ERROR INTRODUCED

---

#### Pattern 10: Version Comparison Validation

**CRITICAL**: When fixing issues or when user provides previous version, ALWAYS compare current version against previous stable version to validate fixes are true improvements and not introducing new errors or correcting already-correct work.

**Comparison Protocol:**

1. **Obtain Previous Version**

   - User may provide previous submission
   - Or retrieve from git history
   - Or compare against earlier draft in conversation

2. **Question-by-Question Detailed Comparison**

   - For each question, extract exact text from both versions
   - Compare side-by-side focusing on:
     - Mathematical claims and proofs
     - Logic flow and case analysis
     - Technical explanations
     - Presentation style

3. **Identify Differences**

   - What changed between versions?
   - Was it mathematical content or presentation?
   - Was change an addition, deletion, or replacement?

4. **Validate Each Change**

   - **If previous had error and current fixed:** ✅ True improvement
   - **If previous was correct and current changed:** ⚠️ Potential regression
   - **If presentation only:** Verify mathematics unchanged
   - **If both wrong:** Need third opinion (lecture material)

5. **Mathematical Correctness Check**
   - Previous version claim: Was it valid or invalid?
   - Current version claim: Is it valid or invalid?
   - Compare against course material ground truth

**Critical Questions:**

- **Did previous version have the "error" we claim?** (verify with exact quotes)
- **Does current version actually fix it?** (verify new reasoning is sound)
- **Did we introduce any NEW errors while fixing?** (check surrounding context)
- **Are we "fixing" something that was already correct?** (dangerous over-correction)

**Example Cases:**

**Case 1: True Fix Validated**

- Previous Q4: "if w_e > W, then no item in S could fit either" ← FALSE (S already packed!)
- Current Q4: Uses fractional relaxation contradiction ← CORRECT
- Verdict: ✅ Current version FIXES actual bug

**Case 2: Presentation Improvement**

- Previous Q3: Runtime in 1 paragraph, correct O(mn²)
- Current Q3: Runtime in 3 paragraphs, same O(mn²)
- Verdict: ✅ Current version IMPROVES presentation, mathematics unchanged

**Case 3: Over-Correction (AVOID)**

- Previous: Correct proof with valid reasoning
- Current: "Fixed" to different approach that's actually wrong
- Verdict: ❌ Regression - previous was correct, current broke it

**Red Flags:**

- ❌ User says "previous had no issues" but we claim it did (verify carefully!)
- ❌ Can't find the "error" in previous version when searching
- ❌ "Fix" changes correct mathematics to something different
- ❌ Multiple "fixes" to same section (might be over-correcting)
- ❌ User questions if we introduced errors (take seriously!)

**When to use this pattern:**

- User provides previous submission for comparison
- User asks "is previous or current correct?"
- After making multiple fixes in one session
- When user expresses doubt about changes made
- Before final submission if multiple revision rounds occurred

**Output format:**

Create comparison document with:

1. **Executive Summary**: Which version is correct and why
2. **Question-by-Question Analysis**: Exact text comparison with verdict
3. **Critical Differences Table**: Previous vs Current with winner
4. **Error Analysis**: What bugs existed and what got fixed
5. **Final Recommendation**: Which version to submit

**Key Insight:**

This is NOT an LLM hallucination check - this is ESSENTIAL quality control! Version comparison:

- Catches regression bugs (fixes that break correct work)
- Verifies fixes are true improvements
- Prevents over-correction of already-correct work
- Validates mathematical reasoning changes
- Protects against hallucinated "problems"

**User's observation example:**

"i dont think we even had any ai markers in this version as put above, so idk how we later introduced some"

→ Take SERIOUSLY. Compare versions carefully. User may be right that previous was already clean.
→ Verify claimed "issues" actually existed in previous version.
→ Don't trust memory - check actual text from both versions.

---

**Version:** 2.5  
**Last Updated:** November 24, 2025  
**Based on:** Successful CSC373 PS3 completion (56/56 marks)  
**Key Additions in v2.5:**

- **Version Comparison Validation (Pattern 10)** - NEW
  - Rigorous protocol for comparing previous vs current versions
  - Validates fixes are true improvements, not regressions
  - Prevents over-correction of already-correct work
  - Protects against hallucinated problems
  - Essential quality control when user provides previous submission
- **Mathematical Verification After Fixes (Pattern 9)**
  - Rigorous verification protocol for all mathematical fixes
  - Line-by-line soundness checking procedure
  - Course material cross-reference requirement
  - Red flag detection for common fix errors
- **Rigorous Final Audit Methodology (Pattern 8)**
  - Systematic 7-scan approach covering all quality dimensions
  - AI marker detection and removal protocol
  - Tone consistency verification across entire document
  - Lecture alignment cross-reference procedure
- Enhanced tone consistency checking (catches AI checklists and verbose itemizations)
- Comprehensive pre-submission verification checklist
- All previous patterns (1-9) retained and validated

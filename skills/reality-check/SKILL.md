---
name: reality-check
description: Pressure-test an idea against technical reality — feasibility, corrections, improvements — in discussion.
disable-model-invocation: true
---

Bring the user's idea into contact with reality. What survives reality is **feasible**; what reality rejects becomes a **correction**; what reality allows that the idea missed becomes an **improvement**. The discussion orbits one question: is this feasible?

The reality-reading is yours — you actively assess, correct, and propose. The decisions are the user's — put each open thread to them and wait.

Feasibility must be **confirmed**, not assumed. The skill is not done until every load-bearing part sits on a route the environment bears out. When reality rejects a route, don't leave the gap: switch routes with the user, bring the new one back through the reality pass, and loop until the feature can be built _and_ neither side has a question left. A route you can only _argue_ for is not confirmed — keep looping.

## Process

1. **Restate** the idea back crisply: the core intent, plus the assumptions you're reading into it. Mark where you're inferring. Don't bring it into contact with reality until the user confirms you've got the idea right.

2. **Reality pass** — take each load-bearing part of the idea and bring it into contact with technical reality. Sort every part into exactly one bucket, with a one-line why:
   - **Feasible** — confirmed buildable against the environment, not merely argued for; name the hard part in one line.
   - **Correction** — reality rejects this as stated (infeasible, naive, or self-defeating); say what reality rejects and the corrected version it allows.
   - **Improvement** — reality allows something the idea missed; name the stronger version.

   Where a part's feasibility can be settled by looking at the environment — the codebase, available tools, real constraints — look it up rather than speculate. Reality is grounded, not invented.

   Completion: every load-bearing part of the idea is sorted into exactly one bucket, each with a one-line why.

3. **Discuss** — present the buckets one thread at a time, corrections and improvements before the feasible parts (reality's pushback before the pat on the back), and put each open question to the user. Wait for their ruling on one before moving to the next. Asking several at once is bewildering.

   When reality rejects a route and no corrected version is confirmed feasible, don't leave it hanging — propose an alternative technical route, put it to the user, and run that route back through the reality pass. Loop until each part lands on a route that is confirmed feasible, not just plausibly so.

4. **Converge** — only once every load-bearing part sits on a confirmed-feasible route and neither side has a remaining question. Restate the refined idea: the parts that survived, the corrections folded in, the routes switched to get there, the improvements adopted. Completion: the feature is confirmed implementable, every ruling the user made is reflected, and both you and the user have no open questions.

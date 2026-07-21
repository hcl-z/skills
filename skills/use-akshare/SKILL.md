---
name: use-akshare
description: Look up the right AKShare API for the user's data need and generate runnable code. Use when the user wants Chinese or global financial data (stock, futures, options, fund, bond, macro, index, FX, crypto, etc.), mentions akshare, or asks how to get a specific kind of market data.
---

# Use AKShare — lookup

A **lookup** skill: consult the index → read the target file → produce code.

## Steps

### 1. Index

Read `api-index.md` **in full**. Match the user's request against every category. Completion: you have identified the single best-matching documentation file, or narrowed to 2-3 candidates you can present to the user with their distinguishing details.

- If **one match**, confirm with the user: restate the matched category and file, ask if correct.
- If **multiple candidates**, list each with its category and the key difference (e.g. one covers real-time data, one covers historical). Ask the user to pick.
- If **no match**, report what the closest categories are and why none fit. Ask the user to rephrase.

### 2. Install check

If the user has not mentioned installing or upgrading akshare in this conversation, read `docs/installation.md` and offer the one-liner: `pip install akshare --upgrade`.

### 3. Look up

Read the matched `docs/data/` file. Scan **every API entry** in the file — do not stop at the first match. Each entry is a block with the heading `接口:` followed by a function name. Completion: you have found the function (or functions) whose **描述** best matches the user's specific need, and you can explain the trade-off between them if there are multiple.

### 4. Produce

Output the result in three blocks:

```
① Code — copy-paste ready, all parameters filled:
   import akshare as ak
   df = ak.<function>(<param>=<value>)
   print(df)

② Parameters — a table of every input parameter the user can adjust:

   | 参数 | 类型 | 必填 | 说明 | 默认/示例 |

③ Output — a table of every return column:

   | 列名 | 类型 | 说明 |
```

Include the data sample from the docs, and mention any relevant caveats from `data_tips.md`.

## [AKShare](https://github.com/akfamily/akshare) 指数数据

### 期权波动率指数

#### 50ETF 期权波动率指数

接口: index_option_50etf_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?50ETF

描述: 50ETF 期权波动率指数 QVIX; 又称中国版的恐慌指数

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_50etf_qvix_df = ak.index_option_50etf_qvix()
print(index_option_50etf_qvix_df)
```

数据示例

```
            date       open       high        low  close
0     2015-02-09  28.800000  28.756878  27.829555  28.63
1     2015-02-10  28.630000  29.435024  28.499700  28.75
2     2015-02-11  26.470710  26.470710  26.176691  26.44
3     2015-02-12  26.389094  26.389094  25.773367  25.80
4     2015-02-13  24.286958  24.286958  22.810473  23.41
          ...        ...        ...        ...    ...
2108  2023-10-13  15.290000  15.780000  15.180000  15.61
2109  2023-10-16  16.270000  16.720000  16.060000  16.41
2110  2023-10-17  16.470000  16.580000  15.800000  15.80
2111  2023-10-18  15.810000  16.110000  15.450000  15.70
2112  2023-10-19  16.060000  18.280000  16.060000  17.95
[2113 rows x 5 columns]
```

#### 50ETF 期权波动率指数-分时

接口: index_option_50etf_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?50ETF

描述: 50ETF 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_50etf_min_qvix_df = ak.index_option_50etf_min_qvix()
print(index_option_50etf_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  16.06
1     9:31:11  16.52
2     9:32:11  16.52
3     9:33:11  16.70
4     9:34:11  16.64
..        ...    ...
234  14:53:19  18.14
235  14:54:19  18.06
236  14:55:19  17.99
237  14:56:19  17.95
238  15:00:00    NaN
[239 rows x 2 columns]
```

#### 300ETF 期权波动率指数

接口: index_option_300etf_qvix

目标地址: https://1.optbbs.com/s/vix.shtml?300ETF

描述: 300ETF 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_300etf_qvix_df = ak.index_option_300etf_qvix()
print(index_option_300etf_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
          ...    ...    ...    ...    ...
2108  2023-10-13  15.18  15.70  15.00  15.46
2109  2023-10-16  16.06  17.04  15.89  16.67
2110  2023-10-17  16.73  16.96  16.18  16.19
2111  2023-10-18  16.42  16.42  15.92  16.25
2112  2023-10-19  16.59  18.46  16.59  18.06
[2113 rows x 5 columns]
```

#### 300ETF 期权波动率指数-分时

接口: index_option_300etf_min_qvix

目标地址: https://1.optbbs.com/s/vix.shtml?300ETF

描述: 300ETF 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_300etf_min_qvix_df = ak.index_option_300etf_min_qvix()
print(index_option_300etf_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  16.59
1     9:31:11  16.96
2     9:32:11  17.13
3     9:33:11  17.44
4     9:34:11  17.39
..        ...    ...
234  14:53:19  18.30
235  14:54:19  18.25
236  14:55:19  18.17
237  14:56:19  18.06
238  15:00:00    NaN
[239 rows x 2 columns]
```

#### 500ETF 期权波动率指数

接口: index_option_500etf_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?500ETF

描述: 500ETF 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_500etf_qvix_df = ak.index_option_500etf_qvix()
print(index_option_500etf_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  27.43  27.43  25.78  26.17
2394  2024-12-25  26.47  27.60  26.10  26.74
2395  2024-12-26  27.16  27.16  24.16  24.51
2396  2024-12-27  24.74  24.76  23.48  23.75
2397  2024-12-30  24.64  24.84  23.86  24.44
[2398 rows x 5 columns]
```

#### 500ETF 期权波动率指数-分时

接口: index_option_500etf_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?500ETF

描述: 500ETF 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_500etf_min_qvix_df = ak.index_option_500etf_min_qvix()
print(index_option_500etf_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  24.61
1     9:31:51  24.61
2     9:32:51  24.68
3     9:33:51  24.69
4     9:34:51  24.73
..        ...    ...
234  14:53:59  25.22
235  14:54:59  25.15
236  14:55:59  25.17
237  14:56:59  25.21
238  15:00:59  25.21
[239 rows x 2 columns]
```

#### 创业板 期权波动率指数

接口: index_option_cyb_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?CYB

描述: 创业板 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_cyb_qvix_df = ak.index_option_cyb_qvix()
print(index_option_cyb_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  32.25  32.25  29.97  30.39
2394  2024-12-25  30.41  30.53  29.23  29.84
2395  2024-12-26  30.12  30.12  27.44  27.69
2396  2024-12-27  27.72  27.91  26.77  26.95
2397  2024-12-30  27.95  27.98  26.90  27.58
[2398 rows x 5 columns]
```

#### 创业板 期权波动率指数-分时

接口: index_option_cyb_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?CYB

描述: 创业板 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_cyb_min_qvix_df = ak.index_option_cyb_min_qvix()
print(index_option_cyb_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  27.85
1     9:31:51  27.76
2     9:32:51  27.84
3     9:33:51  27.88
4     9:34:51  27.71
..        ...    ...
234  14:53:59  28.53
235  14:54:59  28.61
236  14:55:59  28.61
237  14:56:59  28.55
238  15:00:59  28.49
[239 rows x 2 columns]
```

#### 科创板 期权波动率指数

接口: index_option_kcb_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?KCB

描述: 科创板 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_kcb_qvix_df = ak.index_option_kcb_qvix()
print(index_option_kcb_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  37.88  37.93  36.76  37.03
2394  2024-12-25  37.04  37.67  36.18  36.18
2395  2024-12-26  35.92  36.68  33.78  34.01
2396  2024-12-27  32.66  33.48  32.37  32.54
2397  2024-12-30  33.50  33.80  33.04  33.37
[2398 rows x 5 columns]
```

#### 科创板 期权波动率指数-分时

接口: index_option_kcb_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?KCB

描述: 科创板 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_kcb_min_qvix_df = ak.index_option_kcb_min_qvix()
print(index_option_kcb_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  29.91
1     9:31:51  31.34
2     9:32:51  31.34
3     9:33:51  33.52
4     9:34:51  33.82
..        ...    ...
234  14:53:59  34.07
235  14:54:59  34.06
236  14:55:59  34.06
237  14:56:59  33.91
238  15:00:59  33.91
[239 rows x 2 columns]
```

#### 深证100ETF 期权波动率指数

接口: index_option_100etf_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?100ETF

描述: 深证100ETF 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_100etf_qvix_df = ak.index_option_100etf_qvix()
print(index_option_100etf_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  25.46  25.46  24.05  24.21
2394  2024-12-25  24.49  24.61  23.72  24.01
2395  2024-12-26  24.40  24.40  22.18  22.46
2396  2024-12-27  22.81  23.10  22.04  22.05
2397  2024-12-30  23.15  23.15  22.23  22.44
[2398 rows x 5 columns]
```

#### 深证100ETF 期权波动率指数-分时

接口: index_option_100etf_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?100ETF

描述: 深证100ETF 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_100etf_min_qvix_df = ak.index_option_100etf_min_qvix()
print(index_option_100etf_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  22.80
1     9:31:51  22.95
2     9:32:51  22.85
3     9:33:51  22.75
4     9:34:51  22.66
..        ...    ...
234  14:53:59  23.05
235  14:54:59  22.90
236  14:55:59  23.02
237  14:56:59  23.05
238  15:00:59  23.04
[239 rows x 2 columns]
```

#### 中证300股指 期权波动率指数

接口: index_option_300index_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?Index

描述: 中证300股指 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_300index_qvix_df = ak.index_option_300index_qvix()
print(index_option_300index_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  21.63  21.72  20.88  21.26
2394  2024-12-25  21.53  21.53  20.94  21.07
2395  2024-12-26  21.42  21.42  20.38  20.46
2396  2024-12-27  20.75  20.88  20.04  20.13
2397  2024-12-30  20.85  20.85  19.98  20.06
[2398 rows x 5 columns]
```

#### 中证300股指 期权波动率指数-分时

接口: index_option_300index_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?Index

描述: 中证300股指 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_300index_min_qvix_df = ak.index_option_300index_min_qvix()
print(index_option_300index_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  20.32
1     9:31:51  20.25
2     9:32:51  20.23
3     9:33:51  20.31
4     9:34:51  20.40
..        ...    ...
234  14:53:59  20.06
235  14:54:59  20.00
236  14:55:59  19.97
237  14:56:59  20.03
238  15:00:59  20.08
[239 rows x 2 columns]
```

#### 中证1000股指 期权波动率指数

接口: index_option_1000index_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?Index1000

描述: 中证1000股指 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_1000index_qvix_df = ak.index_option_1000index_qvix()
print(index_option_1000index_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  28.95  29.11  28.07  28.23
2394  2024-12-25  28.16  29.28  28.16  28.19
2395  2024-12-26  28.54  28.54  26.74  26.90
2396  2024-12-27  27.09  27.17  25.60  25.98
2397  2024-12-30  26.85  27.04  26.15  26.50
[2398 rows x 5 columns]
```

#### 中证1000股指 期权波动率指数-分时

接口: index_option_1000index_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?Index1000

描述: 中证1000股指 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_1000index_min_qvix_df = ak.index_option_1000index_min_qvix()
print(index_option_1000index_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  26.79
1     9:31:51  26.84
2     9:32:51  26.90
3     9:33:51  26.93
4     9:34:51  26.78
..        ...    ...
234  14:53:59  27.50
235  14:54:59  27.47
236  14:55:59  27.51
237  14:56:59  27.55
238  15:00:59  27.55
[239 rows x 2 columns]
```

#### 上证50股指 期权波动率指数

接口: index_option_50index_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?50index

描述: 上证50股指 期权波动率指数 QVIX

限量: 单次返回所有数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| date  | object  | -   |
| open  | float64 | -   |
| high  | float64 | -   |
| low   | float64 | -   |
| close | float64 | -   |

接口示例

```python
import akshare as ak

index_option_50index_qvix_df = ak.index_option_50index_qvix()
print(index_option_50index_qvix_df)
```

数据示例

```
            date   open   high    low  close
0     2015-02-09    NaN    NaN    NaN    NaN
1     2015-02-10    NaN    NaN    NaN    NaN
2     2015-02-11    NaN    NaN    NaN    NaN
3     2015-02-12    NaN    NaN    NaN    NaN
4     2015-02-13    NaN    NaN    NaN    NaN
...          ...    ...    ...    ...    ...
2393  2024-12-24  20.78  20.82  20.08  20.43
2394  2024-12-25  20.72  21.19  20.43  20.67
2395  2024-12-26  20.74  20.74  19.67  19.81
2396  2024-12-27  19.96  20.10  19.43  19.54
2397  2024-12-30  20.36  20.40  19.65  19.84
[2398 rows x 5 columns]
```

#### 上证50股指 期权波动率指数-分时

接口: index_option_50index_min_qvix

目标地址: http://1.optbbs.com/s/vix.shtml?50index

描述: 上证50股指 期权波动率指数-分时

限量: 单次返回最近交易日的分时数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称    | 类型      | 描述  |
|-------|---------|-----|
| time  | object  | -   |
| qvix  | float64 | -   |

接口示例

```python
import akshare as ak

index_option_50index_min_qvix_df = ak.index_option_50index_min_qvix()
print(index_option_50index_min_qvix_df)
```

数据示例

```
         time   qvix
0     9:30:00  20.05
1     9:31:51  20.24
2     9:32:51  20.25
3     9:33:51  20.15
4     9:34:51  20.13
..        ...    ...
234  14:53:59  19.61
235  14:54:59  19.73
236  14:55:59  19.70
237  14:56:59  19.62
238  15:00:59  19.57
[239 rows x 2 columns]
```


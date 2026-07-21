## [AKShare](https://github.com/akfamily/akshare) 公募基金数据

### 基金仓位

#### 股票型基金仓位

接口: fund_stock_position_lg

目标地址: https://legulegu.com/stockdata/fund-position/pos-stock

描述: 乐咕乐股-基金仓位-股票型基金仓位

限量: 返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称       | 类型      | 描述               |
|----------|---------|------------------|
| date     | object  | -                |
| close    | float64 | 注意单位: 沪深 300 收盘价 |
| position | float64 | 注意单位: 持仓比例       |

接口示例

```python
import akshare as ak

fund_stock_position_lg_df = ak.fund_stock_position_lg()
print(fund_stock_position_lg_df)
```

数据示例

```
           date    close  position
0    2017-12-04  4018.86     89.25
1    2017-12-08  4003.38     90.57
2    2017-12-15  3980.86     90.43
3    2017-12-22  4054.60     90.27
4    2017-12-29  4030.85     90.34
..          ...      ...       ...
256  2022-11-25  3775.78     87.73
257  2022-12-02  3870.95     89.01
258  2022-12-09  3998.24     89.58
259  2022-12-16  3954.23     90.10
260  2022-12-23  3828.22     89.67
```

#### 平衡混合型基金仓位

接口: fund_balance_position_lg

目标地址: https://legulegu.com/stockdata/fund-position/pos-pingheng

描述: 乐咕乐股-基金仓位-平衡混合型基金仓位

限量: 返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称       | 类型      | 描述               |
|----------|---------|------------------|
| date     | object  | -                |
| close    | float64 | 注意单位: 沪深 300 收盘价 |
| position | float64 | 注意单位: 持仓比例       |

接口示例

```python
import akshare as ak

fund_balance_position_lg_df = ak.fund_balance_position_lg()
print(fund_balance_position_lg_df)
```

数据示例

```
           date    close  position
0    2017-12-04  4018.86     68.03
1    2017-12-08  4003.38     70.94
2    2017-12-15  3980.86     71.28
3    2017-12-22  4054.60     71.88
4    2017-12-29  4030.85     72.29
..          ...      ...       ...
256  2022-11-25  3775.78     65.26
257  2022-12-02  3870.95     66.41
258  2022-12-09  3998.24     67.51
259  2022-12-16  3954.23     68.88
260  2022-12-23  3828.22     68.28
```

#### 灵活配置型基金仓位

接口: fund_linghuo_position_lg

目标地址: https://legulegu.com/stockdata/fund-position/pos-linghuo

描述: 乐咕乐股-基金仓位-灵活配置型基金仓位

限量: 返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称       | 类型      | 描述               |
|----------|---------|------------------|
| date     | object  | -                |
| close    | float64 | 注意单位: 沪深 300 收盘价 |
| position | float64 | 注意单位: 持仓比例       |

接口示例

```python
import akshare as ak

fund_linghuo_position_lg_df = ak.fund_linghuo_position_lg()
print(fund_linghuo_position_lg_df)
```

数据示例

```
           date    close  position
0    2017-12-04  4018.86     51.44
1    2017-12-08  4003.38     52.48
2    2017-12-15  3980.86     52.59
3    2017-12-22  4054.60     52.70
4    2017-12-29  4030.85     53.18
..          ...      ...       ...
256  2022-11-25  3775.78     69.86
257  2022-12-02  3870.95     71.01
258  2022-12-09  3998.24     71.95
259  2022-12-16  3954.23     72.73
260  2022-12-23  3828.22     72.55
```


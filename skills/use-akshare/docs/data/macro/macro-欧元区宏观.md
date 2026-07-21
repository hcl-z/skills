## [AKShare](https://github.com/akfamily/akshare) 宏观数据

### 欧元区宏观

#### 国民经济运行状况

##### 经济状况

###### 欧元区季度GDP年率报告

接口: macro_euro_gdp_yoy

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_gdp_yoy

描述: 欧元区季度 GDP 年率报告, 数据区间从 20131114-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_gdp_yoy_df = ak.macro_euro_gdp_yoy()
print(macro_euro_gdp_yoy_df)
```

数据示例

```
             商品          日期   今值  预测值   前值
0    欧元区季度GDP年率  2013-11-14 -0.4 -0.3 -0.5
1    欧元区季度GDP年率  2013-12-04 -0.4 -0.4 -0.4
2    欧元区季度GDP年率  2014-01-10 -0.3 -0.4 -0.4
3    欧元区季度GDP年率  2014-02-14  0.5  0.4 -0.3
4    欧元区季度GDP年率  2014-03-05  0.5  0.5  0.5
..          ...         ...  ...  ...  ...
97   欧元区季度GDP年率  2022-07-29  4.0  3.4  5.4
98   欧元区季度GDP年率  2022-08-17  3.9  4.0  4.0
99   欧元区季度GDP年率  2022-09-07  4.1  3.9  5.4
100  欧元区季度GDP年率  2022-10-31  2.1  NaN  4.3
101  欧元区季度GDP年率  2022-11-15  NaN  4.0  2.1
```

##### 物价水平

###### 欧元区CPI月率报告

接口: macro_euro_cpi_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_cpi_mom

描述: 欧元区 CPI 月率报告, 数据区间从 19900301-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_cpi_mom_df = ak.macro_euro_cpi_mom()
print(macro_euro_cpi_mom_df)
```

数据示例

```
          商品          日期   今值  预测值   前值
0    欧元区CPI月率  1990-03-01  0.4  NaN  NaN
1    欧元区CPI月率  1990-04-01  0.2  NaN  0.4
2    欧元区CPI月率  1990-05-01  0.4  NaN  0.2
3    欧元区CPI月率  1990-06-01  0.2  NaN  0.4
4    欧元区CPI月率  1990-07-01  0.1  NaN  0.2
..        ...         ...  ...  ...  ...
421  欧元区CPI月率  2022-09-16  0.6  0.5  0.1
422  欧元区CPI月率  2022-09-30  1.2  0.9  0.6
423  欧元区CPI月率  2022-10-19  1.2  1.2  0.6
424  欧元区CPI月率  2022-10-31  1.5  NaN  1.2
425  欧元区CPI月率  2022-11-17  NaN  1.2  1.2
```

###### 欧元区CPI年率报告

接口: macro_euro_cpi_yoy

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_cpi_yoy

描述: 欧元区 CPI 年率报告, 数据区间从 19910201-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_cpi_yoy_df = ak.macro_euro_cpi_yoy()
print(macro_euro_cpi_yoy_df)
```

数据示例

```
           商品          日期    今值   预测值    前值
0    欧元区CPI年率  1991-02-01   0.0   NaN   NaN
1    欧元区CPI年率  1991-03-01   4.1   NaN   3.9
2    欧元区CPI年率  1991-04-01   3.9   NaN   4.1
3    欧元区CPI年率  1991-05-01   3.9   NaN   3.9
4    欧元区CPI年率  1991-06-01   4.1   NaN   3.9
..        ...         ...   ...   ...   ...
556  欧元区CPI年率  2022-09-16   9.1   9.1   9.1
557  欧元区CPI年率  2022-09-30  10.0   9.7   9.1
558  欧元区CPI年率  2022-10-19   9.9  10.0   9.1
559  欧元区CPI年率  2022-10-31  10.7  10.2   9.9
560  欧元区CPI年率  2022-11-17   NaN  10.0  10.7
```

###### 欧元区PPI月率报告

接口: macro_euro_ppi_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_ppi_mom

描述: 欧元区 PPI 月率报告, 数据区间从 19810301-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_ppi_mom_df = ak.macro_euro_ppi_mom()
print(macro_euro_ppi_mom_df)
```

数据示例

```
           商品          日期   今值  预测值   前值
0    欧元区PPI月率  1981-03-01  1.0  NaN  NaN
1    欧元区PPI月率  1981-04-01  0.7  NaN  1.0
2    欧元区PPI月率  1981-05-01  1.5  NaN  0.7
3    欧元区PPI月率  1981-06-01  0.7  NaN  1.5
4    欧元区PPI月率  1981-07-01  0.6  NaN  0.7
..        ...         ...  ...  ...  ...
499  欧元区PPI月率  2022-07-04  0.7  1.0  1.2
500  欧元区PPI月率  2022-08-03  1.1  1.0  0.5
501  欧元区PPI月率  2022-09-02  4.0  2.5  1.3
502  欧元区PPI月率  2022-10-04  5.0  4.9  4.0
503  欧元区PPI月率  2022-11-04  NaN  1.7  5.0
```

###### 欧元区零售销售月率报告

接口: macro_euro_retail_sales_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_retail_sales_mom

描述: 欧元区零售销售月率报告, 数据区间从 20000301-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_retail_sales_mom_df = ak.macro_euro_retail_sales_mom()
print(macro_euro_retail_sales_mom_df)
```

数据示例

```
            商品          日期   今值  预测值   前值
0    欧元区零售销售月率  2000-03-01  0.7  NaN  NaN
1    欧元区零售销售月率  2000-04-01 -0.3  NaN  0.7
2    欧元区零售销售月率  2000-05-01  0.7  NaN -0.3
3    欧元区零售销售月率  2000-06-01  0.3  NaN  0.7
4    欧元区零售销售月率  2000-07-01  0.1  NaN  0.3
..         ...         ...  ...  ...  ...
271  欧元区零售销售月率  2022-07-06  0.2  0.4 -1.4
272  欧元区零售销售月率  2022-08-03 -1.2  0.1  0.4
273  欧元区零售销售月率  2022-09-05  0.3  0.4 -1.0
274  欧元区零售销售月率  2022-10-06 -0.3 -0.4 -0.4
275  欧元区零售销售月率  2022-11-08  NaN -0.4 -0.3
```

##### 劳动力市场

###### 欧元区季调后就业人数季率报告

接口: macro_euro_employment_change_qoq

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_employment_change_qoq

描述: 欧元区季调后就业人数季率报告, 数据区间从 20083017-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_employment_change_qoq_df = ak.macro_euro_employment_change_qoq()
print(macro_euro_employment_change_qoq_df)
```

数据示例

```
              商品          日期   今值  预测值   前值
0   欧元区季调后就业人数季率  2008-03-17  0.2  0.0  0.3
1   欧元区季调后就业人数季率  2008-06-13  0.3  0.0  0.2
2   欧元区季调后就业人数季率  2008-09-12  0.2  NaN  0.3
3   欧元区季调后就业人数季率  2008-12-16 -0.1  NaN  0.2
4   欧元区季调后就业人数季率  2009-03-16 -0.3  NaN -0.1
..           ...         ...  ...  ...  ...
70  欧元区季调后就业人数季率  2022-03-08  0.5  0.5  0.9
71  欧元区季调后就业人数季率  2022-05-17  0.5  NaN  0.4
72  欧元区季调后就业人数季率  2022-06-08  0.6  0.5  0.4
73  欧元区季调后就业人数季率  2022-08-17  0.3  NaN  0.6
74  欧元区季调后就业人数季率  2022-09-07  0.4  0.3  0.7
```

###### 欧元区失业率报告

接口: macro_euro_unemployment_rate_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_unemployment_rate_mom

描述: 欧元区失业率报告, 数据区间从 19980501-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_unemployment_rate_mom_df = ak.macro_euro_unemployment_rate_mom()
print(macro_euro_unemployment_rate_mom_df)
```

数据示例

```
         商品          日期    今值  预测值    前值
0    欧元区失业率  1998-05-01  10.6  NaN   NaN
1    欧元区失业率  1998-06-01  10.5  NaN  10.6
2    欧元区失业率  1998-07-01  10.5  NaN  10.5
3    欧元区失业率  1998-08-01  10.4  NaN  10.5
4    欧元区失业率  1998-09-01  10.4  NaN  10.4
..      ...         ...   ...  ...   ...
290  欧元区失业率  2022-06-30   6.6  6.8   6.7
291  欧元区失业率  2022-08-01   6.6  6.6   6.6
292  欧元区失业率  2022-09-01   6.6  6.6   6.7
293  欧元区失业率  2022-09-30   6.6  6.6   6.6
294  欧元区失业率  2022-11-03   6.6  6.6   6.7
```

#### 贸易状况

##### 欧元区未季调贸易帐报告

接口: macro_euro_trade_balance

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_trade_balance_mom

描述: 欧元区未季调贸易帐报告, 数据区间从 19990201-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_trade_balance_df = ak.macro_euro_trade_balance()
print(macro_euro_trade_balance_df)
```

数据示例

```
            商品          日期     今值    预测值     前值
0    欧元区未季调贸易帐  1999-02-01  -27.0    NaN    NaN
1    欧元区未季调贸易帐  1999-03-01   19.0    NaN  -27.0
2    欧元区未季调贸易帐  1999-04-01   27.0    NaN   19.0
3    欧元区未季调贸易帐  1999-05-01   21.0    NaN   27.0
4    欧元区未季调贸易帐  1999-06-01   -9.0    NaN   21.0
..         ...         ...    ...    ...    ...
281  欧元区未季调贸易帐  2022-07-15 -263.0    NaN -328.0
282  欧元区未季调贸易帐  2022-08-16 -246.0 -200.0 -284.0
283  欧元区未季调贸易帐  2022-09-15 -340.0 -200.0 -254.0
284  欧元区未季调贸易帐  2022-10-14 -509.0    NaN -339.0
285  欧元区未季调贸易帐  2022-11-15    NaN    NaN -509.0
```

##### 欧元区经常帐报告

接口: macro_euro_current_account_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_current_account_mom

描述: 欧元区经常帐报告, 数据区间从 20080221-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_current_account_mom_df = ak.macro_euro_current_account_mom()
print(macro_euro_current_account_mom_df)
```

数据示例

```
         商品          日期     今值    预测值     前值
0    欧元区经常帐  1999-02-01 -150.0    NaN    NaN
1    欧元区经常帐  2003-07-01   10.0    NaN    0.0
2    欧元区经常帐  2008-02-21 -103.0    2.0    7.0
3    欧元区经常帐  2008-03-26 -106.0    0.0 -103.0
4    欧元区经常帐  2008-04-24   43.0    0.0 -106.0
..      ...         ...    ...    ...    ...
175  欧元区经常帐  2022-07-20  -45.0    NaN  -58.0
176  欧元区经常帐  2022-08-19   42.0    NaN  -45.0
177  欧元区经常帐  2022-09-20 -199.0   53.0   42.0
178  欧元区经常帐  2022-10-20 -263.0 -203.0 -199.0
179  欧元区经常帐  2022-11-22    NaN    NaN -263.0
```

#### 产业指标

##### 欧元区工业产出月率报告

接口: macro_euro_industrial_production_mom

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_industrial_production_mom

描述: 欧元区工业产出月率报告, 数据区间从 19910301-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_industrial_production_mom_df = ak.macro_euro_industrial_production_mom()
print(macro_euro_industrial_production_mom_df)
```

数据示例

```
            商品          日期   今值  预测值   前值
0    欧元区工业产出月率  1991-03-01 -1.1  NaN  NaN
1    欧元区工业产出月率  1991-04-01 -1.0  NaN -1.1
2    欧元区工业产出月率  1991-05-01 -0.5  NaN -1.0
3    欧元区工业产出月率  1991-06-01 -0.1  NaN -0.5
4    欧元区工业产出月率  1991-07-01  1.9  NaN -0.1
..         ...         ...  ...  ...  ...
380  欧元区工业产出月率  2022-07-13  0.8  0.3  0.5
381  欧元区工业产出月率  2022-08-12  0.7  0.2  2.1
382  欧元区工业产出月率  2022-09-14 -2.3 -1.0  1.1
383  欧元区工业产出月率  2022-10-12  1.5  0.6 -2.3
384  欧元区工业产出月率  2022-11-14  NaN  NaN  1.5
```

##### 欧元区制造业PMI初值报告

接口: macro_euro_manufacturing_pmi

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_manufacturing_pmi

描述: 欧元区制造业 PMI 初值报告, 数据区间从 20080222-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_manufacturing_pmi_df = ak.macro_euro_manufacturing_pmi()
print(macro_euro_manufacturing_pmi_df)
```

数据示例

```
              商品          日期    今值   预测值    前值
0    欧元区制造业PMI初值  2008-02-22  52.3  52.5  52.8
1    欧元区制造业PMI初值  2008-03-03  52.3  52.3  52.3
2    欧元区制造业PMI初值  2008-03-20  52.0  52.0  52.3
3    欧元区制造业PMI初值  2008-04-01  52.0  52.0  52.0
4    欧元区制造业PMI初值  2008-04-23  51.8  51.6  52.0
..           ...         ...   ...   ...   ...
353  欧元区制造业PMI初值  2022-09-23  48.5  48.7  49.6
354  欧元区制造业PMI初值  2022-10-03  48.4  48.5  49.6
355  欧元区制造业PMI初值  2022-10-24  46.6  47.8  48.4
356  欧元区制造业PMI初值  2022-11-02  46.4  46.6  48.4
357  欧元区制造业PMI初值  2022-11-23   NaN   NaN  46.4
```

##### 欧元区服务业PMI终值报告

接口: macro_euro_services_pmi

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_services_pmi

描述: 欧元区服务业 PMI 终值报告, 数据区间从 20080222-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_services_pmi_df = ak.macro_euro_services_pmi()
print(macro_euro_services_pmi_df)
```

数据示例

```
              商品          日期    今值   预测值    前值
0    欧元区服务业PMI终值  2008-02-22  52.3  51.0  50.6
1    欧元区服务业PMI终值  2008-03-05  52.3  52.3  52.3
2    欧元区服务业PMI终值  2008-04-03  51.6   0.0  51.7
3    欧元区服务业PMI终值  2008-04-23  51.8  51.4  51.6
4    欧元区服务业PMI终值  2008-05-06  52.0  51.8  51.8
..           ...         ...   ...   ...   ...
351  欧元区服务业PMI终值  2022-09-23  48.9  49.0  49.8
352  欧元区服务业PMI终值  2022-10-05  48.8  48.9  49.8
353  欧元区服务业PMI终值  2022-10-24  48.2  48.2  48.8
354  欧元区服务业PMI终值  2022-11-04   NaN  48.2  48.2
355  欧元区服务业PMI终值  2022-11-23   NaN  48.2  48.8
```

#### 领先指标

##### 欧元区ZEW经济景气指数报告

接口: macro_euro_zew_economic_sentiment

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_zew_economic_sentiment

描述: 欧元区 ZEW 经济景气指数报告, 数据区间从 20080212-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_zew_economic_sentiment_df = ak.macro_euro_zew_economic_sentiment()
print(macro_euro_zew_economic_sentiment_df)
```

数据示例

```
               商品          日期    今值   预测值    前值
0    欧元区ZEW经济景气指数  2008-02-12 -41.4 -43.0 -41.7
1    欧元区ZEW经济景气指数  2008-03-11 -35.0 -42.0 -41.4
2    欧元区ZEW经济景气指数  2008-04-15 -44.8 -33.0 -35.0
3    欧元区ZEW经济景气指数  2008-05-20 -43.6 -44.2 -44.8
4    欧元区ZEW经济景气指数  2008-06-17 -52.7 -43.9 -43.6
..            ...         ...   ...   ...   ...
174  欧元区ZEW经济景气指数  2022-07-12  51.1   NaN -28.0
175  欧元区ZEW经济景气指数  2022-08-16 -54.9 -57.0 -51.1
176  欧元区ZEW经济景气指数  2022-09-13 -60.7 -58.3 -54.9
177  欧元区ZEW经济景气指数  2022-10-18 -59.7 -61.2 -60.7
178  欧元区ZEW经济景气指数  2022-11-15   NaN   NaN -59.7
```

##### 欧元区Sentix投资者信心指数报告

接口: macro_euro_sentix_investor_confidence

目标地址: https://datacenter.jin10.com/reportType/dc_eurozone_sentix_investor_confidence

描述: 欧元区 Sentix 投资者信心指数报告, 数据区间从 20020801-至今

限量: 单次返回所有历史数据

输入参数

| 名称  | 类型  | 描述  |
|-----|-----|-----|
| -   | -   | -   |

输出参数

| 名称  | 类型      | 描述      |
|-----|---------|---------|
| 商品  | object  | -       |
| 日期  | object  | -       |
| 今值  | float64 | 注意单位: % |
| 预测值 | float64 | 注意单位: % |
| 前值  | float64 | 注意单位: % |

接口示例

```python
import akshare as ak

macro_euro_sentix_investor_confidence_df = ak.macro_euro_sentix_investor_confidence()
print(macro_euro_sentix_investor_confidence_df)
```

数据示例

```
                   商品          日期    今值   预测值    前值
0    欧元区Sentix投资者信心指数  2002-08-01  13.0   NaN   NaN
1    欧元区Sentix投资者信心指数  2002-10-01  -8.5   NaN  13.0
2    欧元区Sentix投资者信心指数  2003-02-01 -21.8   NaN  -8.5
3    欧元区Sentix投资者信心指数  2003-03-01 -22.8   NaN -21.8
4    欧元区Sentix投资者信心指数  2003-04-01 -19.4   NaN -22.8
..                ...         ...   ...   ...   ...
239  欧元区Sentix投资者信心指数  2022-07-04 -26.4 -19.9 -15.8
240  欧元区Sentix投资者信心指数  2022-08-08 -25.2 -24.7 -26.4
241  欧元区Sentix投资者信心指数  2022-09-05 -31.8 -27.5 -25.2
242  欧元区Sentix投资者信心指数  2022-10-10 -38.3 -34.7 -31.8
243  欧元区Sentix投资者信心指数  2022-11-07   NaN -34.7 -38.3
```


select m.Year_Qtr, mcn.BUSINESS_REGION_NAME,  ag.AGGREGATE_MERCHANT_NAME
     , sum(c.CLEARED_NET_TRAN_AMT_USD) as CLEARED_NET_TRAN_AMT_USD
     , sum(c.CLEARED_NET_TRAN_CNT) as CLEARED_NET_TRAN_CNT
from clearing_summary_data_set c
inner join agg_merch ag on c.MERCH_LOCATION_ID = ag.MERCH_LOCATION_ID
inner join country cn on cn.COUNTRY_CODE= c.ISS_COUNTRY_CODE
inner join country mcn on mcn.COUNTRY_CODE= c.MERCH_COUNTRY_CODE
inner join month m on c.DW_PROCESS_MONTH = m.DW_PROCESS_MONTH
where m.DW_PROCESS_MONTH = '2020-01-01'
and c.ISS_COUNTRY_CODE = c.MERCH_COUNTRY_CODE
and c.ISS_PREF_CURR_CODE = c.ACQ_PREF_CURR_CODE
and cn.COUNTRY_CODE = 'BLZ'
and ag.Industry_Name  = 'Cosmetics and Beauty Services'
and ag.AGGREGATE_MERCHANT_NAME =  'Agg Merch _9352'
group by m.Year_Qtr, mcn.BUSINESS_REGION_NAME, ag.AGGREGATE_MERCHANT_NAME;
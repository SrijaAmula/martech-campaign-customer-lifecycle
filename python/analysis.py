import pandas as pd
df=pd.read_csv('../data/campaign_performance.csv')
df['roas']=df.revenue/df.spend
df['ctr']=df.clicks/df.impressions
df['cpl']=df.spend/df.leads
print(df.groupby('channel').agg(spend=('spend','sum'),revenue=('revenue','sum'),leads=('leads','sum')).assign(roas=lambda x:x.revenue/x.spend).sort_values('roas',ascending=False))

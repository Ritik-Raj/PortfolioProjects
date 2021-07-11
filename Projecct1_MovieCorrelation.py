#!/usr/bin/env python
# coding: utf-8

# In[21]:


#Importing libraries.
import pandas as pd
import seaborn as sns
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
plt.style.use('ggplot')
from matplotlib.pyplot import figure

get_ipython().run_line_magic('matplotlib', 'inline')
matplotlib.rcParams['figure.figsize'] = (12,8) #Adjust the configuration of the plots we will create

#Read in the data
df = pd.read_csv(r'E:\Priority\Data Analytics\Project Portfolio\Python\project1\movies.csv')


# In[20]:


#let's look at data.
df.head()


# In[24]:


#Let's see if there is any missing data.
for col in df.columns:
    pct_missing = np.mean(df[col].isnull())
    print('{} - {}%'.format(col, pct_missing))


# In[28]:


#Datatypes for our colums.
df.dtypes


# In[30]:


#Change datatypes of columns
df['budget'] = df['budget'].astype('int64')
df['gross'] = df['gross'].astype('int64')


# In[31]:


df


# In[33]:


#Create correct year column.
df['yearcorrect'] = df['released'].astype(str).str[:4]
df


# In[53]:


df= df.sort_values(by=['gross'], inplace=False, ascending=False)


# In[35]:


pd.set_option('display.max_rows',None)


# In[48]:


#Drop any duplicates.
df.drop_duplicates()


# In[49]:


df


# In[50]:


#Budget high correlation
#Company high correlation


# In[55]:


#Scatter plot with budget vs gross
plt.scatter(x=df['budget'], y=df['gross'])
plt.title('Budget vs Gross Earnings')
plt.xlabel('Gross Earnings')
plt.ylabel('Budget for Film')
plt.show()


# In[54]:


df.head()


# In[58]:


#Plot budget vs gross using seaborn
sns.regplot(x='budget', y='gross', data=df, scatter_kws={"color":"red"}, line_kws={"color":"purple"})


# In[62]:


#Let's start looking at correlation
df.corr(method='spearman') #pearson, kendall, spearman


# In[63]:


#High correlation between budget and gross
#I was right


# In[65]:


correlation_matrix = df.corr(method='pearson')
sns.heatmap(correlation_matrix, annot=True)
plt.title('Correlation Matric for Numeric Feature')
plt.xlabel('Movie Feature')
plt.ylabel('Movie Feature')
plt.show()


# In[66]:


#look at company
df.head()


# In[69]:


df_numerized = df
for col_name in df_numerized.columns:
    if(df_numerized[col_name].dtype == 'object'):
        df_numerized[col_name] = df_numerized[col_name].astype('category')
        df_numerized[col_name] = df_numerized[col_name].cat.codes
df_numerized


# In[70]:


correlation_matrix = df_numerized.corr(method='pearson')
sns.heatmap(correlation_matrix, annot=True)
plt.title('Correlation Matric for Numeric Feature')
plt.xlabel('Movie Feature')
plt.ylabel('Movie Feature')
plt.show()


# In[71]:


df_numerized.corr()


# In[73]:


correlation_mat = df_numerized.corr()
corr_pairs = correlation_mat.unstack()
corr_pairs


# In[74]:


sorted_pairs= corr_pairs.sort_values()
sorted_pairs


# In[75]:


high_corr = sorted_pairs[(sorted_pairs) > 0.5]
high_corr


# In[ ]:


#Votes and Budgets have the highest correlation to gross earnings
#Company has low correlation
#I was Wrong


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
#a = np.array([])
#a = np.array([])
    
#np.savetxt('acc_trial_3.csv', a, delimiter=',')

#verage = sum(a) / len(a)


df = pd.read_csv('acc_trial_3.csv')
dff = pd.read_csv('acce_trial_2.csv')
df.plot()
dff.subplots()
plt.show()
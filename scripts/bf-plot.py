import numpy as np
import matplotlib.pyplot as plt

# Load the data, skipping the header
data = np.loadtxt('bf.txt', skiprows=1,delimiter=',')

# Unpack the columns
beta, weight, ElnfX = data.T

# --- Plot 1: E[log-likelihood] vs beta ---
plt.figure()
plt.plot(beta, ElnfX, marker='o')
plt.xlabel('Beta')
plt.ylabel('E[log-likelihood]')
plt.title('Thermodynamic Integration: E[log-likelihood] vs Beta')
plt.grid(True)
plt.tight_layout()
plt.savefig("bfplot.pdf", format='pdf')
plt.close("all")


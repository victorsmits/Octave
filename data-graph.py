from numpy import loadtxt, polyfit, polyval
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

pp = PdfPages('plot.pdf')
data = loadtxt("data.txt")
x = data[:, 0]      # prend toute la première colone
label = ["CO", "GE", "EM"]
student = 0
for i in range(1, 4):
    y = data[:, i]
    a = polyfit(x, y, 3)
    plt.plot(x, polyval(a, x), '--')
    plt.plot(x, y, 'o', label=label[i - 1])
    student += y

plt.legend(bbox_to_anchor=(1, 1))
plt.title('Evolution du nombre d\'etudiants par année')
pp.savefig()
plt.close()

b = polyfit(x, student, 2)
plt.plot(x, student, 'o', label="TOTAL")
plt.plot(x, polyval(b, x), '--')

pp.savefig()
pp.close()

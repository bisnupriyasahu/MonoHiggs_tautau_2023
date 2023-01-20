from PIL import Image  # install by > python3 -m pip install --upgrade Pillow  # ref. https://pillow.readthedocs.io/en/latest/installation.html#basic-installation
import os

input_path = 'postanalyzer/plotting_script/plots/'
pdf_path = "plots.pdf"

images = []
# for img_files in os.listdir(input_path):
#     images.append( Image.open( input_path + img_files) )


    
# images[0].save(
#     pdf_path, "PDF" ,resolution=100.0, save_all=True, append_images=images[1:]
# )

import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

# generate a list with dummy plots   
figs = []
for i in [-1, 1]:
    fig = plt.figure()
    plt.plot([1, 2, 3], [i*1, i*2, i*3])
    figs.append(fig)

# gerate a multipage pdf:
with PdfPages('multipage_pdf.pdf') as pdf:
    for fig in figs:
        pdf.savefig(fig)
        plt.close()
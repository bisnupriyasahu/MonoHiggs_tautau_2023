
import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-year",
                    help="dataset year")
parser.add_argument("-ch", "--channel",
                    help="pick channel")
args =  parser.parse_args()
y=args.year
ch=args.channel
if y is None or ch is None:
    print " Use options for channel and year"
    print "-year 2017 -ch etau"
    exit()


path = 'postanalyzer/plotting_script/plots/'
image_list = os.listdir(path)
image_list = sorted(image_list)  
#print(image_list)

hist_dict={}
for img_name in image_list:
    name = img_name.split('_')
    var = '_'.join(name[1:-2])
    idx = name[-2]

    if var in hist_dict:
        hist_dict[var].append(img_name)
    else:
        hist_dict[var] = [img_name]
        
for k, v in hist_dict.items():
    print k, v

html_text_setup = """
<!DOCTYPE html>
<html>
<head>
<style>
* {{
  box-sizing: border-box;
}}

.column {{
  float: left;
  width: 350px;
  padding: 5px;
}}

/* Clearfix (clear floats) */
.row::after {{
  content: "";
  clear: both;
  display: table;
}}
</style>
</head>
<body>

<h2>{channel} channel {year} plots</h2>
<p>  </p>
"""

html_text_end = """

<p>
<br>
<br>
<br>
</p>
</body>
</html>
"""

file = open("display_plots.html","w")
file.write(html_text_setup.format(channel=ch , year=y))


column_image_string = """
<div class="column">
<img src="{filename}" style="width:100%">
</div>
"""

for k, v in hist_dict.items():

    file.write("""
    <div class="row">
    """)
    for plot_name in v:
        file.write(column_image_string.format(filename=path+plot_name))
    
    file.write("""
    </div>
    """)


file.write(html_text_end)
file.close()

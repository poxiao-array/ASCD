import os

import numpy as np
import pandas as pd
from shutil import copyfile

filepath = "../binary_graph_data/normal/edge/"
dirs = os.listdir(filepath)
for file in dirs:
    copyfile("normal/"+file, "normal1/"+file)


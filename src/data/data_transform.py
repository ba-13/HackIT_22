import pandas as pd
import numpy as np
import json

path_to_profiles = "./HackIT Assignments - Profiles.csv"
path_to_problems = "./HackIT Assignments - Problems.csv"
path_to_data_profiles_js = "./data_profiles.js"
path_to_data_problems_js = "./data_problems.js"

data = pd.read_csv(path_to_profiles)
details = data.loc[:, "NAME":"ROLL"]
data.drop(columns=["NAME", "ROLL"], inplace=True)
details.rename(columns={"NAME": "name", "ROLL": "roll"}, inplace=True)
details["roll"] = details["roll"].astype(str)

scores = []
data = np.array(data)
for row in data:
    row = list(map(lambda x: 'a' if x == 10 else str(x), row))
    string = ''.join(row)
    scores.append(string)
scores = pd.DataFrame(scores, columns=["scores"])
data = pd.concat([details, scores], axis=1)

out = "export const ProfilesData = " + data.to_json(orient='records')
with open(path_to_data_profiles_js, "w") as f:
    f.write(out)

data = pd.read_csv(path_to_problems)
out = "export const Problems = [\n"
for problem in data.loc[:, "Problems"]:
    out += "\""
    out += problem
    out += "\""
    out += ",\n"
out += "]"

with open(path_to_data_problems_js, "w") as f:
    f.write(out)

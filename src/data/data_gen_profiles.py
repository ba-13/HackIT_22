from faker import Faker
from random import randint
import numpy as np
import sys
NUM_ASSIGNMENTS = 9
NUM_MENTEES = 50

# keep the following that way only
MARKS_MIN = 0
MARKS_MAX = 10

sys.stdout = open('./data_profiles.js', 'w')

fake = Faker('en_IN')
fake.seed_instance(4321)

#     print("\"location\" : \"" + fake.address().split('\n')[1].split(',')[0] + "\",")
#     print("\"img\" : \"" + "https://cdn1.iconfinder.com/data/icons/user-pictures/100/unknown-512.png" + "\",")


print("export const ProfilesData = [")
for i in range(NUM_MENTEES):
    print("{\n" + "\"name\" : \"" + fake.name() + "\",")
    tmp = np.random.randint(MARKS_MIN, MARKS_MAX + 1, size=(NUM_ASSIGNMENTS))
    scores = list(map(lambda x: str(x) if x < 10 else 'a', tmp))
    scrs = ''.join(scores)
    score = np.sum(tmp)
    print("\"score\" : ", score, ",")
    print("\"roll\" : ", randint(190000, 219999), ",")
    print("\"scores\" : \"" + scrs + "\"\n},")
print("]")

sys.stdout.close()

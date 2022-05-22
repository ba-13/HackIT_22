from faker import Faker
from random import randint
import numpy as np
import sys
from env import NUM_ASSIGNMENTS, NUM_MENTEES, MARKS_MAX, MARKS_MIN

sys.stdout = open('./data_profiles.js', 'w')

fake = Faker('en_IN')
fake.seed_instance(4321)

print("export const ProfilesData = [")
for i in range(NUM_MENTEES):
    print("{\n" + "\"name\" : \"" + fake.name() + "\",")
    tmp = np.random.randint(MARKS_MIN, MARKS_MAX + 1, size=(NUM_ASSIGNMENTS))
    scores = list(map(lambda x: str(x) if x < 10 else 'a', tmp))
    scrs = ''.join(scores)
    # score = np.sum(tmp)
    # print("\"score\" : ", score, ",")
    print("\"roll\" : \"" + str(randint(190000, 219999)) + "\",")
    print("\"scores\" : \"" + scrs + "\"\n},")
print("]")

sys.stdout.close()

sys.stdout = open("./data_problems.js", "w")
fake = Faker('en_IN')
fake.seed_instance(4321)

print("export const Problems = [")
for i in range(NUM_ASSIGNMENTS):
    print(f"\"" + fake.sentence() + "\",")
print("]")
sys.stdout.close()

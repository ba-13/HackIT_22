from faker import Faker
import sys
NUM_ASSIGNMENTS = 9

sys.stdout = open("./data_problems.js", "w")
fake = Faker('en_IN')
fake.seed_instance(4321)

print("export const Problems = [")
for i in range(9):
    print(f"\"" + fake.sentence() + "\",")
print("]")
sys.stdout.close()

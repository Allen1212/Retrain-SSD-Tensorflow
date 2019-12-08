import re
import os
class1 = 'car'
annotation_folder = './VOC2007/test/Annotations'
list = os.listdir(annotation_folder)
# list.sort(key= lambda x:int(x[:-4]))
total_number1 = 0

for i in range(0, len(list)):
    path = os.path.join(annotation_folder, list[i])
    annotation_file = open(annotation_folder + '/' + os.path.basename(path)).read()
    current_number1 = len(re.findall(class1, annotation_file))
    print(list[i], "->", current_number1)
    total_number1 += current_number1


print(total_number1)

temp_list = []
with open('./eww copy.yuck', 'r') as f:
    for i in f.readlines():
        temp_list.append(i)
for j in range(len(temp_list)):
    i = temp_list[j]
    if ':geometry' in i:
        print(i)
        x = i[i.find(':x'):i.find(':y')]
        x_num = x.replace(':x', '').strip()
        print(x_num)
        y = i[i.find(':y'):i.find(':width')]
        y_num = y.replace(':y', '').strip()
        print(y_num)
        i = i.replace(x, x.replace(x_num, str(int(x_num)+330))).replace(y, y.replace(y_num, str(int(y_num)+249)))
        print(i)
        print(i.find(':x'), i.find(':y'))
        temp_list[j] = i
for i in temp_list:
    if ':geometry' in i:
        print(i)
with open('./eww copy.yuck', 'w') as f:
    f.writelines(temp_list)

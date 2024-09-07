import os
import re

def categorize_variant(filename):
    categories = []
    if '漏' in filename:
        categories.append('漏')
    if '加' in filename:
        categories.append('加')
    if '代' in filename:
        categories.append('代')
    if '其' in filename:
        categories.append('其')
    
    if not categories:
        return '原字'
    return '_'.join(categories)

def grade_to_int(grade):
    grade_mapping = {"小一": 1, "小二": 2, "小三": 3, "小四": 4, "小五": 5, "小六": 6}
    return grade_mapping.get(grade, 0)

def scan_directories(root_dir):
    file_list = []
    id_counter = 1
    
    for root, dirs, files in os.walk(root_dir):
        png_files = [f for f in files if f.endswith('.png')]
        if png_files:
            grade = os.path.basename(root)
            if grade not in ["小一", "小二", "小三", "小四", "小五", "小六"]:
                continue  # 跳过不在预定义年级列表中的文件夹
            
            grade_int = grade_to_int(grade)
            
            for file in png_files:
                base_char = re.split(r'[_.]', file)[0]
                variant_type = categorize_variant(file)
                file_path = os.path.join(grade, file)  # 包含年级文件夹的完整路径
                file_list.append((id_counter, base_char, variant_type, grade_int, file_path))
                id_counter += 1
    
    return file_list

# 使用示例
root_directory = 'TypingAppServer/words'  # 请替换为您的根目录路径
result = scan_directories(root_directory)

# 将结果保存为SQL文件
output_file = './search_variant.sql'  # SQL文件的名称
with open(output_file, 'w', encoding='utf-8') as f:
    f.write("CREATE TABLE IF NOT EXISTS variant_characters (\n")
    f.write("    id INTEGER PRIMARY KEY,\n")
    f.write("    origin_word TEXT,\n")
    f.write("    type TEXT,\n")
    f.write("    grade INTEGER,\n")
    f.write("    file_path TEXT\n")
    f.write(");\n\n")
    
    for record in result:
        f.write(f"INSERT INTO variant_characters (id, origin_word, type, grade, file_path) VALUES ({record[0]}, '{record[1]}', '{record[2]}', {record[3]}, '{record[4]}');\n")

print(f"结果已保存到 {output_file}")
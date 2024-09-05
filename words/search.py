import os
import re
import json

def scan_directories(root_dir):
    file_dict = {"小一": {}, "小二": {}, "小三": {}, "小四": {}, "小五": {}, "小六": {}}
    
    for root, dirs, files in os.walk(root_dir):
        png_files = [f for f in files if f.endswith('.png')]
        if png_files:
            grade = os.path.basename(root)
            if grade not in file_dict:
                continue  # 跳过不在预定义年级列表中的文件夹
            
            for file in png_files:
                base_char = re.split(r'[_.]', file)[0]
                if base_char not in file_dict[grade]:
                    file_dict[grade][base_char] = []
                file_dict[grade][base_char].append(file)
    
    return file_dict

# 使用示例
root_directory = 'TypingAppServer/words'  # 请替换为您的根目录路径
result = scan_directories(root_directory)

# 将结果保存为JSON文件
output_file = './character_files.json'  # JSON文件的名称
with open(output_file, 'w', encoding='utf-8') as f:
    json.dump(result, f, ensure_ascii=False, indent=4)

print(f"结果已保存到 {output_file}")
import pandas as pd
import re

# 讀取 Excel 文件
# 請將 'your_excel_file.xlsx' 替換為您的 Excel 文件名
df = pd.read_excel('./設計字-正式.xlsx')

# 創建一個 SQL 文件
with open('load_chinese_characters.sql', 'w', encoding='utf-8') as f:
    # 寫入 CREATE TABLE 語句
    f.write("""CREATE TABLE IF NOT EXISTS chinese_characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character TEXT NOT NULL,
    radical TEXT,
    stroke_count INTEGER,
    character_frequency INTEGER,
    word_frequency INTEGER,
    word TEXT,
    grade INTEGER,
    variant_num INTEGER DEFAULT 0,
    words_frequency INTEGER
);\n\n""")

    # 遍歷 DataFrame 的每一行，生成 INSERT 語句
    for index, row in df.iterrows():
        # 使用 re.sub 來移除或替換不合法的字符
        word = re.sub(r'[^\w\s]', '', str(row['詞'])) if pd.notna(row['詞']) else ''
        
        sql = f"""INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('{row['字']}', '{row['部首']}', {row['筆畫']}, {row['字頻']}, {row['詞頻(字在詞頻總表的詞頻)']}, 
        '{word}', {row['年級']}, {row['詞頻(詞在詞頻總表的詞頻)'] if pd.notna(row['詞頻(詞在詞頻總表的詞頻)']) else 'NULL'});\n"""
        
        f.write(sql)

print("SQL 文件已生成：load_chinese_characters.sql")
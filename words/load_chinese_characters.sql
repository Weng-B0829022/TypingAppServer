CREATE TABLE IF NOT EXISTS chinese_characters (
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
);

INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('是', '日', 9, 15244, 8668.0, 
        '但是', 1, 695.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('我', '戈', 7, 11919, 8417.0, 
        '你我', 1, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('有', '月', 6, 11588, 8196.0, 
        '沒有', 1, 1293.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('來', '人', 8, 8247, 3326.0, 
        '起來', 1, 912.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('這', '辵', 11, 6914, 6445.0, 
        '這麼', 1, 366.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('到', '刀', 8, 6850, 3443.0, 
        '看到', 1, 674.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('們', '人', 10, 6667, 10.0, 
        '他們', 1, 1109.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('個', '人', 10, 6428, 6112.0, 
        '九個', 1, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('好', '女', 6, 5553, 3520.0, 
        '好像', 1, 304.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('就', '尢', 12, 5516, 4420.0, 
        '成就', 1, 73.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('要', '襾', 9, 5394, 3796.0, 
        '不要', 1, 487.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('說', '言', 14, 5369, 3981.0, 
        '說話', 1, 198.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('看', '目', 9, 4786, 1947.0, 
        '看見', 1, 291.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('會', '曰', 13, 4776, 2757.0, 
        '會員', 1, 28.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('著', '艸', 12, 4398, 4111.0, 
        '拿著', 1, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('過', '辵', 13, 3413, 1442.0, 
        '經過', 1, 346.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('都', '邑', 11, 3370, 2665.0, 
        '都是', 1, 516.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('起', '走', 10, 3046, 406.0, 
        '想起', 1, 69.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('面', '面', 9, 2838, 157.0, 
        '裡面', 1, 157.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('還', '辵', 17, 2384, 1890.0, 
        '還沒', 1, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('道', '辵', 13, 2287, 349.0, 
        '知道', 1, 840.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('寫', '宀', 15, 2061, 916.0, 
        '寫字', 1, 118.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('常', '巾', 11, 1829, 272.0, 
        '非常', 1, 586.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('像', '人', 14, 1636, 985.0, 
        '想像', 1, 56.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('真', '目', 10, 1621, 864.0, 
        '認真', 1, 67.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('話', '言', 13, 1466, 721.0, 
        '電話', 1, 126.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('愛', '心', 13, 1384, 393.0, 
        '愛心', 1, 56.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('空', '穴', 8, 1308, 81.0, 
        '空氣', 1, 262.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('原', '厂', 10, 1241, 87.0, 
        '原因', 1, 145.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('帶', '巾', 11, 1119, 544.0, 
        '帶領', 1, 42.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('張', '弓', 11, 1026, 414.0, 
        '緊張', 1, 80.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('故', '攴', 9, 721, 48.0, 
        '故事', 1, 418.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('草', '艸', 10, 705, 110.0, 
        '草莓', 1, 39.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('春', '日', 9, 576, 70.0, 
        '春天', 1, 184.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('跳', '足', 13, 492, 247.0, 
        '跳舞', 1, 61.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('倒', '人', 10, 469, 169.0, 
        '跌倒', 1, 17.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('綠', '糸', 14, 409, 76.0, 
        '綠色', 1, 93.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('彩', '彡', 11, 326, 13.0, 
        '彩虹', 1, 45.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('游', '水', 12, 232, 43.0, 
        '游泳', 1, 55.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('船', '舟', 11, 464, 211.0, 
        '帆船', 1, 18.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('所', '戶', 8, 2587, 1090.0, 
        '場所', 2, 32.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('從', '彳', 11, 1999, 1541.0, 
        '從前', 2, 88.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('明', '日', 8, 1965, 57.0, 
        '明天', 2, 113.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('經', '糸', 13, 1819, 98.0, 
        '已經', 2, 581.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('部', '邑', 11, 1663, 220.0, 
        '部首', 2, 101.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('相', '目', 9, 1535, 52.0, 
        '相同', 2, 186.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('變', '言', 23, 1357, 346.0, 
        '變成', 2, 312.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('被', '衣', 11, 1355, 1254.0, 
        '棉被', 2, 17.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('畫', '田', 12, 1236, 407.0, 
        '畫家', 2, 58.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('讓', '言', 24, 1126, 1049.0, 
        '禮讓', 2, 4.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('圖', '囗', 14, 1110, 512.0, 
        '圖形', 2, 93.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('照', '火', 13, 907, 159.0, 
        '照片', 2, 71.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('讀', '言', 22, 891, 296.0, 
        '讀書', 2, 214.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('神', '示', 10, 880, 76.0, 
        '神仙', 2, 49.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('飛', '飛', 9, 868, 352.0, 
        '飛機', 2, 102.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('受', '又', 8, 758, 240.0, 
        '接受', 2, 112.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('難', '隹', 19, 729, 189.0, 
        '困難', 2, 95.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('辦', '辛', 16, 688, 117.0, 
        '辦法', 2, 193.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('服', '月', 8, 664, 22.0, 
        '衣服', 2, 200.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('運', '辵', 13, 626, 22.0, 
        '運動', 2, 161.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('寶', '宀', 20, 606, 22.0, 
        '寶貝', 2, 29.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('夜', '夕', 8, 516, 159.0, 
        '夜晚', 2, 59.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('雖', '隹', 17, 551, 82.0, 
        '雖然', 2, 467.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('燈', '火', 16, 427, 50.0, 
        '燈泡', 2, 74.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('館', '食', 16, 378, 59.0, 
        '休館', 2, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('旅', '方', 10, 311, 38.0, 
        '旅行', 2, 76.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('顧', '頁', 21, 295, 18.0, 
        '照顧', 2, 182.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('搖', '手', 13, 273, 54.0, 
        '搖頭', 2, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('銀', '金', 14, 265, 17.0, 
        '銀河', 2, 26.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('漂', '水', 14, 237, 13.0, 
        '漂亮', 2, 186.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('窗', '穴', 12, 226, 69.0, 
        '窗戶', 2, 33.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('散', '攴', 12, 217, 21.0, 
        '散步', 2, 22.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('賣', '貝', 15, 208, 137.0, 
        '販賣', 2, 10.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('彎', '弓', 22, 177, 33.0, 
        '彎曲', 2, 43.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('舒', '舌', 12, 145, 1.0, 
        '舒服', 2, 43.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('腿', '肉', 14, 140, 73.0, 
        '小腿', 2, 10.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('飄', '風', 20, 119, 42.0, 
        '飄揚', 2, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('拔', '手', 8, 107, 33.0, 
        '拔河', 2, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蜜', '虫', 14, 97, 9.0, 
        '蜜蜂', 2, 40.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蝴', '虫', 15, 63, 1.0, 
        '蝴蝶', 2, 60.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('柳', '木', 9, 86, 13.0, 
        '柳橙', 3, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('刻', '刀', 8, 509, 36.0, 
        '雕刻', 3, 51.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('創', '刀', 12, 327, 13.0, 
        '創意', 3, 37.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('亂', '乙', 13, 227, 79.0, 
        '混亂', 3, 21.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('料', '斗', 10, 482, 6.0, 
        '資料', 3, 142.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('累', '糸', 11, 118, 59.0, 
        '勞累', 3, 7.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('漸', '水', 14, 382, 34.0, 
        '逐漸', 3, 101.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('響', '音', 21, 480, 77.0, 
        '影響', 3, 227.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('總', '糸', 17, 557, 146.0, 
        '總是', 3, 126.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('統', '糸', 11, 560, 4.0, 
        '傳統', 3, 166.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('試', '言', 13, 552, 73.0, 
        '考試', 3, 100.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('讚', '言', 26, 153, 3.0, 
        '讚美', 3, 66.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('濃', '水', 16, 124, 21.0, 
        '濃度', 3, 21.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('露', '雨', 21, 269, 21.0, 
        '露營', 3, 14.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('淺', '水', 11, 71, 16.0, 
        '深淺', 3, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('觀', '見', 25, 824, 21.0, 
        '觀察', 3, 240.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('溪', '水', 13, 166, 28.0, 
        '溪流', 3, 18.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('紋', '糸', 10, 134, 7.0, 
        '花紋', 3, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('禮', '示', 18, 474, 25.0, 
        '禮物', 3, 128.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('樓', '木', 15, 216, 61.0, 
        '大樓', 3, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('究', '穴', 7, 326, 1.0, 
        '研究', 3, 200.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('費', '貝', 12, 333, 41.0, 
        '免費', 3, 33.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('防', '阜', 7, 241, 11.0, 
        '防止', 3, 26.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('鈴', '金', 13, 129, 31.0, 
        '鈴聲', 3, 4.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('粉', '米', 10, 230, 75.0, 
        '粉筆', 3, 7.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('轉', '車', 18, 560, 113.0, 
        '旋轉', 3, 38.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('體', '骨', 23, 2099, 73.0, 
        '身體', 3, 457.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('夢', '夕', 14, 204, 55.0, 
        '夢想', 3, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('堂', '土', 11, 202, 14.0, 
        '教堂', 3, 38.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('幕', '巾', 14, 83, 16.0, 
        '開幕', 3, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('島', '山', 10, 225, 47.0, 
        '海島', 3, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('將', '寸', 11, 1427, 1176.0, 
        '將來', 3, 77.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('尋', '寸', 12, 210, 14.0, 
        '尋找', 3, 70.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('研', '石', 9, 308, 7.0, 
        '研發', 3, 7.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('堅', '土', 11, 209, 7.0, 
        '堅硬', 3, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('濕', '水', 17, 34, 9.0, 
        '潮濕', 3, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('肯', '肉', 8, 189, 48.0, 
        '肯定', 3, 42.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('員', '口', 10, 444, 6.0, 
        '成員', 3, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('晒', '日', 10, 36, 19.0, 
        '晒穀', 3, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('紛', '糸', 10, 206, 3.0, 
        '繽紛', 3, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('刺', '刀', 8, 172, 45.0, 
        '刺激', 4, 36.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('挑', '手', 9, 129, 43.0, 
        '挑選', 4, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('叢', '又', 18, 96, 5.0, 
        '草叢', 4, 21.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('則', '刀', 9, 566, 367.0, 
        '否則', 4, 74.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('藝', '艸', 19, 533, 6.0, 
        '藝術', 4, 225.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('龜', '龜', 16, 123, 11.0, 
        '烏龜', 4, 38.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('揮', '手', 12, 211, 18.0, 
        '指揮', 4, 63.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('柴', '木', 10, 101, 14.0, 
        '火柴', 4, 14.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('醫', '酉', 18, 301, 11.0, 
        '醫生', 4, 81.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('戰', '戈', 16, 385, 27.0, 
        '戰爭', 4, 47.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('播', '手', 15, 161, 8.0, 
        '播放', 4, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('迴', '辵', 10, 81, 1.0, 
        '迴盪', 4, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('茫', '艸', 10, 50, 0, 
        '茫然', 4, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('麵', '麥', 20, 88, 12.0, 
        '麵包', 4, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('跡', '足', 13, 93, 1.0, 
        '痕跡', 4, 18.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('聳', '耳', 17, 32, 2.0, 
        '高聳', 4, 7.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('貧', '貝', 11, 88, 3.0, 
        '貧窮', 4, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('耀', '羽', 20, 88, 4.0, 
        '閃耀', 4, 21.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('耐', '而', 9, 95, 5.0, 
        '耐心', 4, 30.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('輸', '車', 16, 117, 33.0, 
        '運輸', 4, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('鹽', '鹵', 24, 124, 49.0, 
        '鹽巴', 4, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('潮', '水', 15, 130, 9.0, 
        '潮濕', 4, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('阻', '阜', 8, 135, 0, 
        '阻止', 4, 25.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('繞', '糸', 18, 139, 62.0, 
        '圍繞', 4, 19.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蘇', '艸', 20, 158, 13.0, 
        '蘇打', 4, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('敵', '攴', 15, 164, 12.0, 
        '敵人', 4, 74.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('描', '手', 12, 172, 5.0, 
        '描述', 4, 44.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('獨', '犬', 16, 251, 17.0, 
        '獨立', 4, 31.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('武', '止', 8, 296, 5.0, 
        '武器', 4, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('驗', '馬', 23, 399, 2.0, 
        '實驗', 4, 144.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('另', '口', 5, 342, 211.0, 
        '另外', 4, 123.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('洲', '水', 9, 356, 11.0, 
        '亞洲', 4, 46.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('絲', '糸', 12, 380, 24.0, 
        '絲線', 4, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('羅', '网', 19, 410, 4.0, 
        '羅馬', 4, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('縣', '糸', 16, 504, 62.0, 
        '縣市', 4, 12.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('皆', '白', 9, 67, 58.0, 
        '皆是', 4, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('煤', '火', 13, 74, 30.0, 
        '煤炭', 4, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('廢', '广', 15, 97, 11.0, 
        '廢棄', 4, 2.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('遙', '辵', 14, 69, 13.0, 
        '遙遠', 4, 30.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('茂', '艸', 9, 64, 3.0, 
        '茂盛', 4, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('售', '口', 11, 29, 1.0, 
        '售價', 5, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('藉', '艸', 18, 129, 89.0, 
        '藉由', 5, 15.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('幻', '幺', 4, 79, 2.0, 
        '幻想', 5, 10.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('龐', '广', 19, 52, 6.0, 
        '龐大', 5, 39.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('攤', '手', 22, 17, 1.0, 
        '攤位', 5, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('澤', '水', 16, 69, 2.0, 
        '光澤', 5, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('垃', '土', 8, 55, 1.0, 
        '垃圾', 5, 39.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('罐', '缶', 24, 52, 15.0, 
        '罐頭', 5, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('棲', '木', 12, 91, 7.0, 
        '棲息', 5, 41.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('倦', '人', 10, 25, 1.0, 
        '疲倦', 5, 18.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('濛', '水', 17, 13, 0, 
        '灰濛', 5, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('瀑', '水', 18, 31, 0, 
        '瀑布', 5, 22.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('仿', '人', 6, 112, 1.0, 
        '模仿', 5, 62.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('銷', '金', 15, 36, 2.0, 
        '銷售', 5, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('哲', '口', 10, 98, 0, 
        '哲學', 5, 9.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('捷', '手', 11, 37, 1.0, 
        '敏捷', 5, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('簽', '竹', 19, 39, 9.0, 
        '簽名', 5, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('殊', '歹', 10, 126, 6.0, 
        '特殊', 5, 89.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('憾', '心', 16, 20, 3.0, 
        '遺憾', 5, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('維', '糸', 14, 331, 11.0, 
        '維持', 5, 54.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('測', '水', 12, 315, 11.0, 
        '測量', 5, 76.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('仍', '人', 4, 267, 105.0, 
        '仍然', 5, 124.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('偉', '人', 11, 228, 2.0, 
        '偉大', 5, 104.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('威', '女', 9, 169, 1.0, 
        '威脅', 5, 12.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('限', '阜', 9, 166, 15.0, 
        '限制', 5, 14.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('億', '人', 15, 144, 0, 
        '億萬', 5, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('誕', '言', 15, 124, 0, 
        '誕生', 5, 47.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('評', '言', 12, 109, 1.0, 
        '評量', 5, 25.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('罪', '网', 13, 101, 15.0, 
        '犯罪', 5, 12.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('灌', '水', 21, 93, 9.0, 
        '灌溉', 5, 33.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('瑞', '玉', 13, 83, 1.0, 
        '瑞典', 5, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('諾', '言', 16, 81, 2.0, 
        '承諾', 5, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('循', '彳', 12, 79, 12.0, 
        '循環', 5, 36.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('雌', '隹', 14, 76, 57.0, 
        '雌雄', 5, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('譜', '言', 19, 71, 6.0, 
        '音譜', 5, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('孤', '子', 8, 70, 3.0, 
        '孤單', 5, 7.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('恰', '心', 9, 67, 11.0, 
        '恰巧', 5, 10.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('譽', '言', 21, 65, 5.0, 
        '榮譽', 5, 32.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('坦', '土', 8, 63, 1.0, 
        '平坦', 5, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('腐', '肉', 14, 62, 0, 
        '豆腐', 5, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('掠', '手', 11, 29, 2.0, 
        '掠食', 6, 19.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('稍', '禾', 12, 69, 39.0, 
        '稍微', 6, 12.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('辯', '辛', 21, 54, 3.0, 
        '辯論', 6, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('詳', '言', 13, 86, 6.0, 
        '詳細', 6, 34.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('眩', '目', 10, 13, 1.0, 
        '暈眩', 6, 2.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('核', '木', 10, 140, 5.0, 
        '核心', 6, 10.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('喉', '口', 12, 34, 3.0, 
        '喉嚨', 6, 11.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('趟', '走', 15, 32, 28.0, 
        '兩趟', 6, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('饒', '食', 20, 30, 6.0, 
        '饒命', 6, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('諷', '言', 16, 11, 0, 
        '諷刺', 6, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('諧', '言', 16, 18, 0, 
        '和諧', 6, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('茅', '艸', 9, 16, 0, 
        '茅屋', 6, 9.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蓮', '艸', 15, 158, 15.0, 
        '花蓮', 6, 37.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('傑', '人', 12, 152, 5.0, 
        '傑出', 6, 32.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('廳', '广', 25, 144, 15.0, 
        '客廳', 6, 25.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('滅', '水', 13, 136, 23.0, 
        '消滅', 6, 24.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('塑', '土', 13, 109, 0, 
        '塑膠', 6, 35.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蕭', '艸', 16, 89, 8.0, 
        '蕭邦', 6, 22.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('輝', '車', 15, 75, 1.0, 
        '光輝', 6, 16.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('媒', '女', 12, 68, 2.0, 
        '媒體', 6, 13.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('頻', '頁', 16, 64, 6.0, 
        '頻繁', 6, 14.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('繡', '糸', 18, 57, 6.0, 
        '刺繡', 6, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('賜', '貝', 15, 46, 23.0, 
        '賞賜', 6, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('措', '手', 11, 43, 0, 
        '措施', 6, 21.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('驅', '馬', 21, 41, 0, 
        '驅動', 6, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('頗', '頁', 14, 37, 33.0, 
        '頗好', 6, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('准', '冫', 10, 36, 3.0, 
        '核准', 6, 4.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('鍾', '金', 17, 35, 10.0, 
        '鍾愛', 6, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('磚', '石', 16, 31, 5.0, 
        '磚頭', 6, 3.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('皂', '白', 7, 30, 1.0, 
        '肥皂', 6, 20.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('違', '辵', 13, 28, 1.0, 
        '違反', 6, 8.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('酥', '酉', 12, 25, 6.0, 
        '酥脆', 6, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('茱', '艸', 10, 20, 0, 
        '茱萸', 6, 5.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('闢', '門', 21, 20, 4.0, 
        '開闢', 6, 12.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('蒲', '艸', 14, 17, 0, 
        '菖蒲', 6, 4.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('簇', '竹', 17, 11, 2.0, 
        '簇擁', 6, 1.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('櫛', '木', 17, 8, 0, 
        '櫛瓜', 6, NULL);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('廓', '广', 14, 8, 0, 
        '輪廓', 6, 6.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('檀', '木', 17, 7, 0, 
        '檀香', 6, 1.0);
INSERT INTO chinese_characters 
        (character, radical, stroke_count, character_frequency, word_frequency, word, grade, words_frequency)
        VALUES 
        ('締', '糸', 15, 6, 1.0, 
        '締結', 6, 2.0);

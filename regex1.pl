#!/usr/bin/perl
# 常規表達式(一) (Regular expression)

# (1) 基本樣式比對 "=~" 與 "!~"

# 比對字串，成功傳回 true
# 失敗傳回 false
"Hello World" =~ /World/;

$string = "Hello World!";

# 若比對成功，則 print
print "It matches\n" if $string =~ /World/;

# 若比對失敗，則 print
print "It doesn't match\n" if $string !~ /World/;

$_ = "Hello World";

# 不指定比對目標，預設為 $_
print "It matches\n" if /World/;

# 大小寫不同，比對失敗
"Hello World" =~ /world/;

# 空白字元也視為一般字元，比對成功
"Hello World" =~ /o W/;

# 比對失敗
"Hello World" =~ /World /;


# (2) 自訂分隔字元

# 等同於 "Hello World" =~ /World/;
"Hello World" =~ m!World!;

"Hello World" =~ m{World};  # The same

# 比對成功，'/' 現在變成一般字元
"/usr/bin/perl" =~ m"/perl";


# (3) 中介字符 (metacharacter) 與字符集 (character class)

# ^：比對行首

"Hello World" =~ /^Hello/;  # 比對成功

# 比對失敗，因為 World 不在行首
"Hello World" =~ /^World/;


# $：比對行尾

"Hello World" =~ /World$/;  # 比對成功

# 比對失敗，因為 World 不在行尾
"Hello World" =~ /Hello$/;


# .：比對除了換行(\n)以外的任意一個字元

"Hello World" =~ /Wo.ld/;   # 比對成功


# *：比對其前一個項目零次以上 (as many as possible)
# +：比對其前一個項目一次以上 (as many as possible)
# ?：比對其前一個項目零次或一次 (as many as possible)

"Hello World" =~ /Hel*o/;   # l* 代表 'l' 零次以上，比對成功

"Hello World" =~ /Hel+o/;   # l* 代表 'l' 一次以上，比對成功

# .* 代表 任意字元零次以上，比對成功，
# 但 Perl 所比對的結果是：
# 'That is a cat, not a hat' 不是 'That'
"That is a cat, not a hat." =~ /T.*at/;

# 加入 '?' 使比對到的資料越短越好，
# 此時 Perl 所比對的結果是：'That'
"That is a cat, not a hat." =~ /T.*?at/;


# []：比對中括號中任意一個字符

# 比對開頭是 A 或 B 或 C，比對失敗
"Hat" =~ /^[ABC]/;

# 比對開頭是 A 或 B 或 C 或 D，比對成功
"Cat" =~ /^[A-D]/;


# [^]：與 [] 相反，比對不在中括號中任意一個字符

# ^[^ABC] 比對開頭不是 A 或 B 或 C 的，比對成功
"Hat" =~ /^[^ABC]/;

# 比對非英文字結尾，比對成功
"Hello World." =~ /[^A-Za-z]$/;


# |：比對任意一組字符

# 比對 cat 或 dog，比對成功
"Mary has a cat." =~ /cat|dog/;


# {}：指定前一個項目出現的次數

# l{1,3} 代表 'l' 一到三次，比對成功
"Helllo World" =~ /Hel{1,3}o/;

# l{2,} 代表 'l' 兩次以上，比對成功
"Helllo World" =~ /Hel{2,}o/;

# l{2} 代表 'l' 兩次，比對失敗
"Helllo World" =~ /Hel{2}o/;


# \b：比對單字邊界
# \B：比對非單字邊界

# 比對 Hello 這個單字，比對成功
"Hello World" =~ /\bHello\b/;

# 比對 Hello 這個單字，比對失敗
"Helloworld" =~ /\bHello\b/;

# 比對成功
"Helloworld" =~ /\bHello\B/;

# 比對 word 這個單字，比對成功
'This is a "word".' =~ /\bword\b/;


# \w：word      [a-zA-Z0-9_]
# \W：non-word      [^a-zA-Z0-9_]
# \s：space     [ \t\n\r\f\v]
# \S：non-space     [^ \t\n\r\f\v]
# \d：digit     [0-9]
# \D：non-digit     [^0-9]

"Hello World" =~ /^\w+\W\w+$/;  # 比對成功

# Reference : perlre(1)

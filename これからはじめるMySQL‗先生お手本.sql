insert into uriage(idur,company,charge,salesdate,state,area)
values(1,'シリウス社',10000,null,'東京都','世田谷区');

-- nullを検索する
select * from uriage where salesdate is null;
select * from uriage where salesdate <=> null;

-- null以外を検索する
select * from uriage where salesdate is not null;

-- データをnullで更新する
insert into uriage(idur,company,charge,salesdate,state,area)
values(2,'シリウス社',10000,'2017-09-09','東京都','世田谷区');

update uriage set salesdate = null where idur = 2;

-- 算術演算子を使ったselect文
select * from jusho where idju + 3 = 1110;

select idju + 3 from jusho;

select *,charge * 1.08 from uriage;

-- 比較演算子を使ったselect文
select * from jusho where idju > 1110;
select * from uriage where charge >= 200000;

-- like演算子
select * from uriage where area like '%区';

-- between演算子
select * from uriage where charge between 200000 and 300000;
select * from uriage where charge >= 200000 and charge <= 300000;

--in演算子
select * from uriage 
where company in ('シリウス社','ベガ社','カノープス社');

select * from uriage 
where company = 'シリウス社' or company = 'ベガ社' 
or company = 'カノープス社';

-- 論理演算子を使ったselect文
select * from jusho where idju > 1110 and idju < 1120;

select * from uriage where charge >= 200000 and state = '東京都';

-- 数値関数
-- ceiling(ceil)関数で切り上げ
select ceiling(1.23);
select ceiling(-1.23);

-- floor関数で切り捨て
select floor(1.23);
select floor(-1.23);

-- round関数で四捨五入
select round(1.23);
select round(1.53);
select round(1.2345,2)
select round(12345,-3);

select * , round(charge, -4) from uriage;

-- rand関数
select rand();

-- 文字列関数
-- concat関数(文字列の連結）
select * , concat(state, address) from jusho;

-- replace関数（文字列の置換）
select replace(company,'社','') from uriage;

-- lower,upper関数
select lower('HELLO');
select upper('World');

--left,right,mid関数
select left('あいうえお',3);
select right('あいうえお',3);
select mid('あいうえお',2,3);

-- locate関数
select locate('区',address) from jusho;
select mid(address,locate('区',address)+1) from jusho;
--日次の加算、減算
select date_add('2017-09-25 06:45:15', interval 1 day);

--日付、自国の差を求める
select datediff('2017-09-25', '2017-09-01');
select datediff('2017-09-01', '2017-09-25');
-TIMESTAMP関数
select timestampdiff(day,'2017-09-01', '2017-09-25');

--別名をつける
SELECT *, round(charge, -4) AS 売上概算 FROM uriage

where句での関数の利用
select * from uriage where year(salesdate) = 2017;
select * from uriage where day(salesdate) = 2017;
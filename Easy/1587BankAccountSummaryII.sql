# Write your MySQL query statement below
select u.name as name, t.balance as balance
from Users as u join (
    select account, sum(amount) as balance
        from Transactions
        group by account
) as t
where u.account = t.account and t.balance > 10000
;
# 2023

downloaded and installed sqllite `yay -S sqllite`

created a database `sqllite3 data.db`

saw db in sqllite with `.databases`

exited sqllite with `.quit`

created table:

`CREATE TABLE oneone (data_column TEXT);
`

entered data

`.mode csv`
`.import 0101input oneone`

I've installed the sqltools extensions and sqllite3 driver so I can load these tables.

Turns out I can't just use sql to do manipulation the way I would in R

https://burkeholland.gitbook.io/vs-code-can-do-that/exercise-7-working-with-data/working-with-sqlite
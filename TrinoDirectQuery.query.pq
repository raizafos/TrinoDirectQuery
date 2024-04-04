// Tested with Hortonworks Sandbox
let
    Source = TrinoDirectQuery.Contents("127.0.0.1", 8080),
    HIVE_Database = Source{[Name = "tpch", Kind = "Database"]}[Data],
    foodmart_Schema = HIVE_Database{[Name = "tiny", Kind = "Schema"]}[Data],
    customer_Table = foodmart_Schema{[Name = "customer", Kind = "Table"]}[Data],
    #"Kept First Rows" = Table.FirstN(customer_Table, 5)
in
    #"Kept First Rows"

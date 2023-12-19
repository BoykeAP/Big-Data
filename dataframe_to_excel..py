import mysql.connector

import pandas as pd

 

# Buat koneksi ke server MySQL

db_connection = mysql.connector.connect(

    host="localhost",

    user="root",

    password="",

    database="lppd_semarang"

)

 

# Buat objek cursor

db_cursor = db_connection.cursor()

 

# Contoh pernyataan SQL SELECT

select_query = "SELECT * FROM DATA"

 

# Eksekusi pernyataan SELECT

db_cursor.execute(select_query)

 

# Ambil hasil SELECT

results = db_cursor.fetchall()

 

# Tutup cursor dan koneksi

db_cursor.close()

db_connection.close()

 

# Konversi hasil SELECT menjadi dataframe pandas

df = pd.DataFrame(results, columns=["_id", "indikator_kinerja", "capaian_tahun_2018", "capaian_tahun_2019"])

 

# Simpan dataframe sebagai file Excel

df.to_excel("data.xlsx", index=False, engine="openpyxl")

 

print("Data telah disimpan dalam file Excel 'json_users.xlsx'") #csv / xlsx

 
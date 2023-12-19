import requests
import mysql.connector
 
# Konfigurasi database
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'lppd_semarang'
}
 
# Alamat URL API
api_url = "https://data.semarangkab.go.id/ckan/dataset/892a16b0-9fb9-495d-b2a5-f20e95316469/resource/a4613b79-6cfb-4705-beac-c7f2acd52145/download/lppd-2019.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        user_data = response.json()
 
        # Membuka koneksi ke database
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
 
        # Menambahkan data pengguna ke dalam tabel
        for user in user_data:
            cursor.execute('''
                INSERT INTO data (_id, indikator_kinerja, capaian_tahun_2018, capaian_tahun_2019)
                VALUES (%s, %s, %s, %s)
            ''', (user['_id'], user['Indikator_Kinerja'], user['Capaian_Tahun_2018'], user['Capaian_Tahun_2019']))
 
        # Menyimpan perubahan dan menutup koneksi
        conn.commit()
        conn.close()
 
        print("Data pengguna telah disimpan ke database MySQL.")
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 
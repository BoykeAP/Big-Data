import requests #library yang kita gunakan untuk mengakses API/json
import pandas as pd
import json
 
# Alamat URL API
api_url = "https://data.semarangkab.go.id/ckan/dataset/892a16b0-9fb9-495d-b2a5-f20e95316469/resource/a4613b79-6cfb-4705-beac-c7f2acd52145/download/lppd-2019.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        data_ = response.json()
 
        with open("data.json", "w") as json_file:
            json.dump(data_, json_file)
 
        # Baca data JSON dari file
        with open('data.json', 'r') as json_file:
            data = json_file.read()
 
        # Ubah JSON menjadi DataFrame pandas
        df = pd.read_json(data)
 
        # Simpan DataFrame ke dalam file Excel
        excel_file = 'api_data.xlsx'
        df.to_excel(excel_file, index=False)
 
        print(f"Data telah disimpan dalam file Excel: {excel_file}")
 
        # Menampilkan hasil
        for user in data_:
            print(f"Id: {user['_id']}")
            print(f"Indikator Kinerja: {user['Indikator_Kinerja']}")
            print(f"Capaian Tahun 2018: {user['Capaian_Tahun_2018']}")
            print(f"Capaian Tahun 2019: {user['Capaian_Tahun_2019']}")
            
 
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 
 


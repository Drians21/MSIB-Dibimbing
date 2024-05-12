from warga import warga

class Satpam(warga):

    def __init__(self, NIK, id_satpam):
        warga.__init__(self, NIK)
        self.id_satpam = id_satpam


    def jaga_tpu(self, tempat):
        print(f'{self.id_satpam} jaga di {tempat}')

    
    def istirahat(self, tempat):
        print(f'{self.id_satpam} sedang melakukan istirahat jam 12.00 di {tempat}')

    def lembur(self, hari):
        print(f'{self.id_satpam} mengambil lembur di hari {hari}')

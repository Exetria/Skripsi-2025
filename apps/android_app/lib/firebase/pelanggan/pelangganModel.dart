class PelangganModel {
  final String namaPerusahaan;
  final String alamatToko;
  final String kondisi;
  final String fotoToko;
  final String nomorTelepon;
  final String namaPemilik;
  final String alamatPemilik;
  final String npwp;
  final String nomorKtp;
  final String fotoKtp;
  final String kepemilikan;
  final String langganan;
  final int kode;

  PelangganModel({
    required this.namaPerusahaan,
    required this.alamatToko,
    required this.kondisi,
    required this.fotoToko,
    required this.nomorTelepon,
    required this.namaPemilik,
    required this.alamatPemilik,
    required this.npwp,
    required this.nomorKtp,
    required this.fotoKtp,
    required this.kepemilikan,
    required this.langganan,
    required this.kode,
  });

  /// Convert Firestore Document to CollectionModel
  factory PelangganModel.fromJson(Map<String, dynamic> json) {
    return PelangganModel(
      namaPerusahaan: json['nama_perusahaan'] ?? '',
      alamatToko: json['alamat_toko'] ?? '',
      kondisi: json['kondisi'] ?? '',
      fotoToko: json['foto_toko'] ?? '',
      nomorTelepon: json['nomor_telepon'] ?? '',
      namaPemilik: json['nama_pemilik'] ?? '',
      alamatPemilik: json['alamat_pemilik'] ?? '',
      npwp: json['npwp'] ?? '',
      nomorKtp: json['nomor_ktp'] ?? '',
      fotoKtp: json['foto_ktp'] ?? '',
      kepemilikan: json['kepemilikan'] ?? '',
      langganan: json['langganan'] ?? '',
      kode: json['kode'] ?? 0,
    );
  }

  /// Convert CollectionModel to JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'nama_perusahaan': namaPerusahaan,
      'alamat_toko': alamatToko,
      'kondisi': kondisi,
      'foto_toko': fotoToko,
      'nomor_telepon': nomorTelepon,
      'nama_pemilik': namaPemilik,
      'alamat_pemilik': alamatPemilik,
      'npwp': npwp,
      'nomor_ktp': nomorKtp,
      'foto_ktp': fotoKtp,
      'kepemilikan': kepemilikan,
      'langganan': langganan,
      'kode': kode,
    };
  }
}

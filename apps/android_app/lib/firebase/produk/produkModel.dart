class ProdukModel {
  final String namaBarang;
  final int mic;
  final List<String> ukuran;
  final int isi;
  final int harga;

  ProdukModel({
    required this.namaBarang,
    required this.mic,
    required this.ukuran,
    required this.isi,
    required this.harga,
  });

  /// Convert Firestore Document to CollectionModel
  factory ProdukModel.fromJson(Map<String, dynamic> json) {
    return ProdukModel(
      namaBarang: json['nama_barang'] ?? '',
      mic: json['mic'] ?? 0,
      ukuran: List<String>.from(json['ukuran'] ?? []),
      isi: json['isi'] ?? 0,
      harga: json['harga'] ?? 0,
    );
  }

  /// Convert CollectionModel to JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'nama_barang': namaBarang,
      'mic': mic,
      'ukuran': ukuran,
      'isi': isi,
      'harga': harga,
    };
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class PermohonanPelangganModel {
  final String tujuan;
  final DateTime tanggal;
  final String carbonCopy;
  final String namaPerusahaan;
  final String alamatToko;
  final double latitude;
  final double longitude;
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
  final int jangkaWaktu;
  final String grade;
  final String creditLimit;
  final DateTime startDate;
  final String note;

  PermohonanPelangganModel({
    required this.tujuan,
    required this.tanggal,
    required this.carbonCopy,
    required this.namaPerusahaan,
    required this.alamatToko,
    required this.latitude,
    required this.longitude,
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
    required this.jangkaWaktu,
    required this.grade,
    required this.creditLimit,
    required this.startDate,
    required this.note,
  });

  /// Convert Firestore Document to CollectionModel
  factory PermohonanPelangganModel.fromJson(Map<String, dynamic> json) {
    return PermohonanPelangganModel(
      tujuan: json['tujuan'] ?? '',
      tanggal: (json['tanggal'] as Timestamp).toDate(),
      carbonCopy: json['carbon_copy'] ?? '',
      namaPerusahaan: json['nama_perusahaan'] ?? '',
      alamatToko: json['alamat_toko'] ?? '',
      latitude: (json['latitude'] ?? 0.0).toDouble(),
      longitude: (json['longitude'] ?? 0.0).toDouble(),
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
      jangkaWaktu: json['jangka_waktu'] ?? 0,
      grade: json['grade'] ?? '',
      creditLimit: json['credit_limit'] ?? '',
      startDate: (json['start_date'] as Timestamp).toDate(),
      note: json['note'] ?? '',
    );
  }

  /// Convert CollectionModel to JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'tujuan': tujuan,
      'tanggal': Timestamp.fromDate(tanggal),
      'carbon_copy': carbonCopy,
      'nama_perusahaan': namaPerusahaan,
      'alamat_toko': alamatToko,
      'latitude': latitude,
      'longitude': longitude,
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
      'jangka_waktu': jangkaWaktu,
      'grade': grade,
      'credit_limit': creditLimit,
      'start_date': Timestamp.fromDate(startDate),
      'note': note,
    };
  }
}

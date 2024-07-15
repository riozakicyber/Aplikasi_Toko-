class Produk {
  int? id;
  String? kodeProduk;
  String? namaProduk;
  int? hargaProduk;

  Produk({this.id, this.kodeProduk, this.namaProduk, this.hargaProduk});

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()),
      kodeProduk: json['kode_produk'],
      namaProduk: json['nama_produk'],
      hargaProduk: json['harga'] is int
          ? json['harga']
          : int.tryParse(json['harga']?.toString() ?? '0'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'kode_produk': kodeProduk,
      'nama_produk': namaProduk,
      'harga': hargaProduk,
    };
  }

  String get hargaProdukDisplay {
    return hargaProduk != null
        ? hargaProduk.toString()
        : 'Harga tidak tersedia';
  }
}

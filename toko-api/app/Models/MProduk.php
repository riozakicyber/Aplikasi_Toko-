<?php
namespace App\Models;

use CodeIgniter\Model;

class MProduk extends Model
{
    protected $table = 'produk';
    protected $primaryKey = 'id';
    protected $allowedFields = ['kode_produk', 'nama_produk', 'harga'];

    // Add validation rules if needed
    protected $validationRules = [
        'kode_produk' => 'required',
        'nama_produk' => 'required',
        'harga' => 'required|decimal'
    ];
}

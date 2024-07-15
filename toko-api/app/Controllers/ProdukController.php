<?php
namespace App\Controllers;

use App\Models\MProduk;
use CodeIgniter\RESTful\ResourceController;

class ProdukController extends ResourceController
{
    public function create()
    {
        $data = [
            'kode_produk' => $this->request->getVar('kode_produk'),
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga')
        ];

        $model = new MProduk();
        if ($model->insert($data)) {
            $produk = $model->find($model->getInsertID());
            return $this->respond([
                'status' => 200,
                'success' => true,
                'data' => $produk
            ]);
        } else {
            return $this->fail('Gagal menambah produk', 400);
        }
    }

    public function list()
    {
        $model = new MProduk();
        $produk = $model->findAll();
        return $this->respond([
            'status' => 200,
            'success' => true,
            'data' => $produk
        ]);
    }

    public function detail($id)
    {
        $model = new MProduk();
        $produk = $model->find($id);
        if ($produk) {
            return $this->respond([
                'status' => 200,
                'success' => true,
                'data' => $produk
            ]);
        } else {
            return $this->failNotFound('Produk tidak ditemukan');
        }
    }

    public function ubah($id)
    {
        $data = [
            'kode_produk' => $this->request->getVar('kode_produk'),
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga')
        ];

        $model = new MProduk();
        if ($model->find($id)) {
            if ($model->update($id, $data)) {
                $produk = $model->find($id);
                return $this->respond([
                    'status' => 200,
                    'success' => true,
                    'data' => $produk
                ]);
            } else {
                return $this->fail('Gagal mengubah produk', 400);
            }
        } else {
            return $this->failNotFound('Produk tidak ditemukan');
        }
    }

    public function hapus($id)
    {
        $model = new MProduk();
        if ($model->find($id)) {
            if ($model->delete($id)) {
                return $this->respondDeleted([
                    'status' => 200,
                    'success' => true,
                    'message' => 'Produk berhasil dihapus'
                ]);
            } else {
                return $this->fail('Gagal menghapus produk', 400);
            }
        } else {
            return $this->failNotFound('Produk tidak ditemukan');
        }
    }
}

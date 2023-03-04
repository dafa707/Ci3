<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parkir extends AUTH_Controller {

	public function index()
	{
		$data = array(
			'title'		=> 'Data Parkir',
			'dataParkir'=> $this->M_parkir->select()->result()
		);
		$this->backend->views('admin/parkir', $data);
	}

	public function keluar($id_parkir = null)
	{
		if ($id_parkir){
			$cekData = $this->M_parkir->select(['id_parkir' => $id_parkir])->row();
			$first_date = new DateTime($cekData->jam_masuk);
			$second_date = new DateTime(date('Y-m-d H:i:s'));

			$difference = $first_date->diff($second_date);

			$total_jam_hari = $difference->format("%d") * 24;
			$total_jam		= $difference->format('%h');

			// echo $total_jam;
			$total = 2000 * ($total_jam_hari + $total_jam);
			$query = $this->M_parkir->update(['jam_keluar' => date('Y-m-d H:i:s'), 'harga' => $total], ['id_parkir' => $id_parkir]);

			if($query){
				echo "<script>alert('Keluar kendaraan berhasil')</script>
				<meta http-equiv='refresh' content='0;./'>";
			}else{
				echo "<script>alert('Keluar kendaraan gagal');</script>
				<meta http-equiv='refresh' content='0;./'>";
			}
		}else{
			redirect('admin/parkir');
		}
	}

	public function hapus($id_parkir = null)
	{
		if ($id_parkir){
			$query = $this->M_parkir->delete(['id_parkir' => $id_parkir]);

			if($query){
				echo "<script>alert('Data berhasil dihapus')</script>
				<meta http-equiv='refresh' content='0;./'>";
			}else{
				echo "<script>alert('Data berhasil dihapus');</script>
				<meta http-equiv='refresh' content='0;./'>";
			}
		}else{
			redirect('admin/parkir');
		}
	}
	public function tambah()
	{
		$data = array(
			'title'		=> 'Data Parkir',
			'dataParkir'=> $this->M_parkir->select()->result()
		);
		$this->backend->views('admin/inputparkir', $data);
	}
	
	public function input(){
		$data = $this->input->get();

		$array = array(
			'jenis_kendaraan' => $data['JenisKendaraan'],
			'plat_nomer'	=> $data['PlatNomer'],
			'jam_masuk'		=> date('Y-m-d H:i:s'),
		);

		$query = $this->M_parkir->insert($array);

		if($query){
			echo "<script>alert('Data berhasil disimpan')</script>
			<meta http-equiv='refresh' content='0;./'>";
		}else{
			echo "<script>alert('Data gagal disimpan');</script>
			<meta http-equiv='refresh' content='0;./'>";
		}
	}
}

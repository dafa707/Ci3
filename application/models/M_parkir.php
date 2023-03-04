<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_parkir extends CI_Model {
	
	public function select($arr = null){
        if ($arr != null){
            $this->db->where($arr);
        }

				$this->db->select('*');
				$this->db->from('tabel_parkir');
		$data = $this->db->get();
		return $data;
	}

	public function insert($arr = null){
            
        $response = $this->db->insert('tabel_parkir', $arr);
		
		return $response;
	}

	public function update($arr = null, $where = null){
		$data = $this->db->update('tabel_parkir', $arr, $where);
		return $data;
	}

	public function delete($arr = null){
		$data = $this->db->delete('tabel_parkir', $arr);
		return $data;
	}
}
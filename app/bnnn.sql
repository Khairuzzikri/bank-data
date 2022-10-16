-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221009.23995b3c73
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 03:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnnn`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggaran`
--

CREATE TABLE `anggaran` (
  `id` int(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `pagu` varchar(255) NOT NULL,
  `realisasi` varchar(255) NOT NULL,
  `sisa` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nip` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `kenaikan_pangkat` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `capaian_program`
--

CREATE TABLE `capaian_program` (
  `id` int(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `terlaksana` varchar(255) NOT NULL,
  `capaian` varchar(255) NOT NULL,
  `persen` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `lama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `tmt` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `cutitahun` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id`, `nama`, `pangkat`, `nip`, `jabatan`, `alamat`, `lama`, `jenis`, `tmt`, `keperluan`, `lokasi`, `cutitahun`, `keterangan`) VALUES
(1, 'ahmad jainal', 'kepala', '12453', 'kepala', 'rgf', '23', 'dfs', 'fsz', 'fsz', 'tungkop', 'erw', 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `desa_bersinar`
--

CREATE TABLE `desa_bersinar` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ibm`
--

CREATE TABLE `ibm` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `jumlahap` varchar(255) NOT NULL,
  `klien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ikotan_instansi_pemerintah`
--

CREATE TABLE `ikotan_instansi_pemerintah` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ikotan_masyarakat`
--

CREATE TABLE `ikotan_masyarakat` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ikotan_pendidikan`
--

CREATE TABLE `ikotan_pendidikan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ikotan_swasta`
--

CREATE TABLE `ikotan_swasta` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `impres`
--

CREATE TABLE `impres` (
  `id` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kasus_tp`
--

CREATE TABLE `kasus_tp` (
  `id` int(255) NOT NULL,
  `inisial` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `bb` varchar(255) NOT NULL,
  `tuntutan` varchar(255) NOT NULL,
  `bb_narkotika` varchar(255) NOT NULL,
  `bb_non_narkotika` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kepuasan_masyarakat`
--

CREATE TABLE `kepuasan_masyarakat` (
  `id` int(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `mutu` varchar(255) NOT NULL,
  `kinerja` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ketahanan_keluarga`
--

CREATE TABLE `ketahanan_keluarga` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kie_instansi_pemerintah`
--

CREATE TABLE `kie_instansi_pemerintah` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kie_masyarakat`
--

CREATE TABLE `kie_masyarakat` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kie_pendidikan`
--

CREATE TABLE `kie_pendidikan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kie_swasta`
--

CREATE TABLE `kie_swasta` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'd50f3e653610d9534cf4933a437cb1bd'),
('testing', 'cd3be4e292e6850c565f7e0875b95477');

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE `mou` (
  `id` int(255) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `nomor` int(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `p3k`
--

CREATE TABLE `p3k` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` text NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `kontrak` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` int(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `nip`, `pangkat`, `golongan`, `jabatan`, `status`, `keterangan`) VALUES
(1, 'ahmad jainal', 12453, 'kepala', 'IV/A', 'kepala', 'PNS', 'hayo');

-- --------------------------------------------------------

--
-- Table structure for table `penggiat_instansi_pemerintah`
--

CREATE TABLE `penggiat_instansi_pemerintah` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggiat_masyarakat`
--

CREATE TABLE `penggiat_masyarakat` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggiat_pendidikan`
--

CREATE TABLE `penggiat_pendidikan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penggiat_swasta`
--

CREATE TABLE `penggiat_swasta` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persepsi_korupsi`
--

CREATE TABLE `persepsi_korupsi` (
  `id` int(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `mutu` varchar(255) NOT NULL,
  `kinerja` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ppnpn`
--

CREATE TABLE `ppnpn` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `penempatan` varchar(255) NOT NULL,
  `tmt` varchar(255) NOT NULL,
  `lama_kerja` varchar(255) NOT NULL,
  `ppnpn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rehab_masy`
--

CREATE TABLE `rehab_masy` (
  `id` int(11) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `klienri` varchar(255) NOT NULL,
  `klienrj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `remaja_teman_sebaya`
--

CREATE TABLE `remaja_teman_sebaya` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sprint`
--

CREATE TABLE `sprint` (
  `id` int(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` int(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id` int(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `sifat` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `halaman` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `disposisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `nourut` varchar(255) NOT NULL,
  `pukul` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `tanggal`, `nourut`, `pukul`, `nama`, `dari`, `keperluan`, `keterangan`) VALUES
(2, 'g4', 'gr', 'grgt', 'juyt', 'egfrwg', 'grgaw', 'a4et');

-- --------------------------------------------------------

--
-- Table structure for table `tat`
--

CREATE TABLE `tat` (
  `id` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `inisial` varchar(255) NOT NULL,
  `rekomendasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes_urin_instansi_pemerintah`
--

CREATE TABLE `tes_urin_instansi_pemerintah` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes_urin_masyarakat`
--

CREATE TABLE `tes_urin_masyarakat` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes_urin_pendidikan`
--

CREATE TABLE `tes_urin_pendidikan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes_urin_swasta`
--

CREATE TABLE `tes_urin_swasta` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trobosan`
--

CREATE TABLE `trobosan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `pelaksana` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggaran`
--
ALTER TABLE `anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capaian_program`
--
ALTER TABLE `capaian_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa_bersinar`
--
ALTER TABLE `desa_bersinar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibm`
--
ALTER TABLE `ibm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikotan_instansi_pemerintah`
--
ALTER TABLE `ikotan_instansi_pemerintah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikotan_masyarakat`
--
ALTER TABLE `ikotan_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikotan_pendidikan`
--
ALTER TABLE `ikotan_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikotan_swasta`
--
ALTER TABLE `ikotan_swasta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impres`
--
ALTER TABLE `impres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasus_tp`
--
ALTER TABLE `kasus_tp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kepuasan_masyarakat`
--
ALTER TABLE `kepuasan_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketahanan_keluarga`
--
ALTER TABLE `ketahanan_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kie_instansi_pemerintah`
--
ALTER TABLE `kie_instansi_pemerintah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kie_masyarakat`
--
ALTER TABLE `kie_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kie_pendidikan`
--
ALTER TABLE `kie_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kie_swasta`
--
ALTER TABLE `kie_swasta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mou`
--
ALTER TABLE `mou`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor` (`nomor`);

--
-- Indexes for table `p3k`
--
ALTER TABLE `p3k`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `penggiat_instansi_pemerintah`
--
ALTER TABLE `penggiat_instansi_pemerintah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggiat_masyarakat`
--
ALTER TABLE `penggiat_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggiat_pendidikan`
--
ALTER TABLE `penggiat_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggiat_swasta`
--
ALTER TABLE `penggiat_swasta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persepsi_korupsi`
--
ALTER TABLE `persepsi_korupsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppnpn`
--
ALTER TABLE `ppnpn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rehab_masy`
--
ALTER TABLE `rehab_masy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remaja_teman_sebaya`
--
ALTER TABLE `remaja_teman_sebaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sprint`
--
ALTER TABLE `sprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tat`
--
ALTER TABLE `tat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_urin_instansi_pemerintah`
--
ALTER TABLE `tes_urin_instansi_pemerintah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_urin_masyarakat`
--
ALTER TABLE `tes_urin_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_urin_pendidikan`
--
ALTER TABLE `tes_urin_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_urin_swasta`
--
ALTER TABLE `tes_urin_swasta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trobosan`
--
ALTER TABLE `trobosan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggaran`
--
ALTER TABLE `anggaran`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `capaian_program`
--
ALTER TABLE `capaian_program`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desa_bersinar`
--
ALTER TABLE `desa_bersinar`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ibm`
--
ALTER TABLE `ibm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ikotan_instansi_pemerintah`
--
ALTER TABLE `ikotan_instansi_pemerintah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ikotan_masyarakat`
--
ALTER TABLE `ikotan_masyarakat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ikotan_pendidikan`
--
ALTER TABLE `ikotan_pendidikan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ikotan_swasta`
--
ALTER TABLE `ikotan_swasta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `impres`
--
ALTER TABLE `impres`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kasus_tp`
--
ALTER TABLE `kasus_tp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kepuasan_masyarakat`
--
ALTER TABLE `kepuasan_masyarakat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ketahanan_keluarga`
--
ALTER TABLE `ketahanan_keluarga`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kie_instansi_pemerintah`
--
ALTER TABLE `kie_instansi_pemerintah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kie_masyarakat`
--
ALTER TABLE `kie_masyarakat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kie_pendidikan`
--
ALTER TABLE `kie_pendidikan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kie_swasta`
--
ALTER TABLE `kie_swasta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mou`
--
ALTER TABLE `mou`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p3k`
--
ALTER TABLE `p3k`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penggiat_instansi_pemerintah`
--
ALTER TABLE `penggiat_instansi_pemerintah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggiat_masyarakat`
--
ALTER TABLE `penggiat_masyarakat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggiat_pendidikan`
--
ALTER TABLE `penggiat_pendidikan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penggiat_swasta`
--
ALTER TABLE `penggiat_swasta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persepsi_korupsi`
--
ALTER TABLE `persepsi_korupsi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ppnpn`
--
ALTER TABLE `ppnpn`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rehab_masy`
--
ALTER TABLE `rehab_masy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remaja_teman_sebaya`
--
ALTER TABLE `remaja_teman_sebaya`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sprint`
--
ALTER TABLE `sprint`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tat`
--
ALTER TABLE `tat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tes_urin_instansi_pemerintah`
--
ALTER TABLE `tes_urin_instansi_pemerintah`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tes_urin_masyarakat`
--
ALTER TABLE `tes_urin_masyarakat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tes_urin_pendidikan`
--
ALTER TABLE `tes_urin_pendidikan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tes_urin_swasta`
--
ALTER TABLE `tes_urin_swasta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trobosan`
--
ALTER TABLE `trobosan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

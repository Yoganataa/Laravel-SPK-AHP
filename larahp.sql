-- phpMyAdmin SQL Dump
-- version 5.2.1-4.fc40
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Jun 2024 pada 15.17
-- Versi server: 10.11.6-MariaDB
-- Versi PHP: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larahp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_solusi_ahp`
--

CREATE TABLE `hasil_solusi_ahp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `index_random_consistency`
--

CREATE TABLE `index_random_consistency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ukuran_matriks` int(11) NOT NULL,
  `nilai` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_nilai_kriteria`
--

CREATE TABLE `matriks_nilai_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_nilai_prioritas_kriteria`
--

CREATE TABLE `matriks_nilai_prioritas_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prioritas` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_nilai_prioritas_utama`
--

CREATE TABLE `matriks_nilai_prioritas_utama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prioritas` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_nilai_utama`
--

CREATE TABLE `matriks_nilai_utama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_penjumlahan_kriteria`
--

CREATE TABLE `matriks_penjumlahan_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_penjumlahan_prioritas_kriteria`
--

CREATE TABLE `matriks_penjumlahan_prioritas_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prioritas` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_penjumlahan_prioritas_utama`
--

CREATE TABLE `matriks_penjumlahan_prioritas_utama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prioritas` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_penjumlahan_utama`
--

CREATE TABLE `matriks_penjumlahan_utama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_perbandingan_kriteria`
--

CREATE TABLE `matriks_perbandingan_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double DEFAULT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matriks_perbandingan_utama`
--

CREATE TABLE `matriks_perbandingan_utama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nilai` double DEFAULT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id_banding` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_25_112653_create_kriterias_table', 1),
(6, '2023_09_25_113116_create_kategoris_table', 1),
(7, '2023_09_25_113734_create_sub_kriterias_table', 1),
(8, '2023_10_04_132310_create_index_random_consistency_table', 1),
(9, '2023_10_04_132325_create_matriks_utama_table', 1),
(10, '2023_10_14_132325_create_matriks_kriteria_table', 1),
(11, '2023_10_20_230358_create_alternatifs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `sub_kriteria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hasil_solusi_ahp`
--
ALTER TABLE `hasil_solusi_ahp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasil_solusi_ahp_alternatif_id_foreign` (`alternatif_id`);

--
-- Indeks untuk tabel `index_random_consistency`
--
ALTER TABLE `index_random_consistency`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matriks_nilai_kriteria`
--
ALTER TABLE `matriks_nilai_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_nilai_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_nilai_kriteria_kategori_id_foreign` (`kategori_id`),
  ADD KEY `matriks_nilai_kriteria_kategori_id_banding_foreign` (`kategori_id_banding`);

--
-- Indeks untuk tabel `matriks_nilai_prioritas_kriteria`
--
ALTER TABLE `matriks_nilai_prioritas_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_nilai_prioritas_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_nilai_prioritas_kriteria_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `matriks_nilai_prioritas_utama`
--
ALTER TABLE `matriks_nilai_prioritas_utama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_nilai_prioritas_utama_kriteria_id_foreign` (`kriteria_id`);

--
-- Indeks untuk tabel `matriks_nilai_utama`
--
ALTER TABLE `matriks_nilai_utama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_nilai_utama_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_nilai_utama_kriteria_id_banding_foreign` (`kriteria_id_banding`);

--
-- Indeks untuk tabel `matriks_penjumlahan_kriteria`
--
ALTER TABLE `matriks_penjumlahan_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_penjumlahan_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_penjumlahan_kriteria_kategori_id_foreign` (`kategori_id`),
  ADD KEY `matriks_penjumlahan_kriteria_kategori_id_banding_foreign` (`kategori_id_banding`);

--
-- Indeks untuk tabel `matriks_penjumlahan_prioritas_kriteria`
--
ALTER TABLE `matriks_penjumlahan_prioritas_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_penjumlahan_prioritas_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_penjumlahan_prioritas_kriteria_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `matriks_penjumlahan_prioritas_utama`
--
ALTER TABLE `matriks_penjumlahan_prioritas_utama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_penjumlahan_prioritas_utama_kriteria_id_foreign` (`kriteria_id`);

--
-- Indeks untuk tabel `matriks_penjumlahan_utama`
--
ALTER TABLE `matriks_penjumlahan_utama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_penjumlahan_utama_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_penjumlahan_utama_kriteria_id_banding_foreign` (`kriteria_id_banding`);

--
-- Indeks untuk tabel `matriks_perbandingan_kriteria`
--
ALTER TABLE `matriks_perbandingan_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_perbandingan_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_perbandingan_kriteria_kategori_id_foreign` (`kategori_id`),
  ADD KEY `matriks_perbandingan_kriteria_kategori_id_banding_foreign` (`kategori_id_banding`);

--
-- Indeks untuk tabel `matriks_perbandingan_utama`
--
ALTER TABLE `matriks_perbandingan_utama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriks_perbandingan_utama_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `matriks_perbandingan_utama_kriteria_id_banding_foreign` (`kriteria_id_banding`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_alternatif_id_foreign` (`alternatif_id`),
  ADD KEY `penilaian_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `penilaian_sub_kriteria_id_foreign` (`sub_kriteria_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `sub_kriteria_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil_solusi_ahp`
--
ALTER TABLE `hasil_solusi_ahp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `index_random_consistency`
--
ALTER TABLE `index_random_consistency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_nilai_kriteria`
--
ALTER TABLE `matriks_nilai_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_nilai_prioritas_kriteria`
--
ALTER TABLE `matriks_nilai_prioritas_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_nilai_prioritas_utama`
--
ALTER TABLE `matriks_nilai_prioritas_utama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_nilai_utama`
--
ALTER TABLE `matriks_nilai_utama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_penjumlahan_kriteria`
--
ALTER TABLE `matriks_penjumlahan_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_penjumlahan_prioritas_kriteria`
--
ALTER TABLE `matriks_penjumlahan_prioritas_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_penjumlahan_prioritas_utama`
--
ALTER TABLE `matriks_penjumlahan_prioritas_utama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_penjumlahan_utama`
--
ALTER TABLE `matriks_penjumlahan_utama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_perbandingan_kriteria`
--
ALTER TABLE `matriks_perbandingan_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matriks_perbandingan_utama`
--
ALTER TABLE `matriks_perbandingan_utama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_solusi_ahp`
--
ALTER TABLE `hasil_solusi_ahp`
  ADD CONSTRAINT `hasil_solusi_ahp_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_nilai_kriteria`
--
ALTER TABLE `matriks_nilai_kriteria`
  ADD CONSTRAINT `matriks_nilai_kriteria_kategori_id_banding_foreign` FOREIGN KEY (`kategori_id_banding`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_nilai_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_nilai_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_nilai_prioritas_kriteria`
--
ALTER TABLE `matriks_nilai_prioritas_kriteria`
  ADD CONSTRAINT `matriks_nilai_prioritas_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_nilai_prioritas_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_nilai_prioritas_utama`
--
ALTER TABLE `matriks_nilai_prioritas_utama`
  ADD CONSTRAINT `matriks_nilai_prioritas_utama_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_nilai_utama`
--
ALTER TABLE `matriks_nilai_utama`
  ADD CONSTRAINT `matriks_nilai_utama_kriteria_id_banding_foreign` FOREIGN KEY (`kriteria_id_banding`) REFERENCES `kriteria` (`id`),
  ADD CONSTRAINT `matriks_nilai_utama_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_penjumlahan_kriteria`
--
ALTER TABLE `matriks_penjumlahan_kriteria`
  ADD CONSTRAINT `matriks_penjumlahan_kriteria_kategori_id_banding_foreign` FOREIGN KEY (`kategori_id_banding`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_penjumlahan_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_penjumlahan_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_penjumlahan_prioritas_kriteria`
--
ALTER TABLE `matriks_penjumlahan_prioritas_kriteria`
  ADD CONSTRAINT `matriks_penjumlahan_prioritas_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_penjumlahan_prioritas_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_penjumlahan_prioritas_utama`
--
ALTER TABLE `matriks_penjumlahan_prioritas_utama`
  ADD CONSTRAINT `matriks_penjumlahan_prioritas_utama_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_penjumlahan_utama`
--
ALTER TABLE `matriks_penjumlahan_utama`
  ADD CONSTRAINT `matriks_penjumlahan_utama_kriteria_id_banding_foreign` FOREIGN KEY (`kriteria_id_banding`) REFERENCES `kriteria` (`id`),
  ADD CONSTRAINT `matriks_penjumlahan_utama_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_perbandingan_kriteria`
--
ALTER TABLE `matriks_perbandingan_kriteria`
  ADD CONSTRAINT `matriks_perbandingan_kriteria_kategori_id_banding_foreign` FOREIGN KEY (`kategori_id_banding`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_perbandingan_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `matriks_perbandingan_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `matriks_perbandingan_utama`
--
ALTER TABLE `matriks_perbandingan_utama`
  ADD CONSTRAINT `matriks_perbandingan_utama_kriteria_id_banding_foreign` FOREIGN KEY (`kriteria_id_banding`) REFERENCES `kriteria` (`id`),
  ADD CONSTRAINT `matriks_perbandingan_utama_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`),
  ADD CONSTRAINT `penilaian_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`),
  ADD CONSTRAINT `penilaian_sub_kriteria_id_foreign` FOREIGN KEY (`sub_kriteria_id`) REFERENCES `sub_kriteria` (`id`);

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `sub_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

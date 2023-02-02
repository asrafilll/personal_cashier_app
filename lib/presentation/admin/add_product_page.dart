import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/core/component/custom_button.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.chevron_left,
                    ),
                  ),
                  const Text(
                    'Tambah Product',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
              const SizedBox(height: 35),
              const Text(
                'Judul Produk',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: kLightGreyColor,
                  filled: true,
                  hintText: 'Masukkan Judul Produk',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Kategori Produk',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(
                    value: 'Buah',
                    child: Text('Buah'),
                  ),
                  DropdownMenuItem(
                    value: 'Sayur',
                    child: Text('Sayur'),
                  ),
                ],
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 20),
              const Text(
                'Input Harga',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: kLightGreyColor,
                  filled: true,
                  hintText: 'Masukkan Harga Produk',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Quantity',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: kLightGreyColor,
                  filled: true,
                  hintText: 'Masukkan Kuantiti Produk',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Input Gambar',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Image.asset('assets/add_product.png'),
              const SizedBox(height: 125),
              CustomButton(
                width: double.infinity,
                title: 'Simpan',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

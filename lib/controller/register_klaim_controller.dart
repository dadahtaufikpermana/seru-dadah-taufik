// Data dummy untuk wilayah
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

final Map<String, List<String>> provinsiKota = {
  'Jawa Barat': ['Bandung', 'Bogor'],
  'Jawa Tengah': ['Semarang', 'Solo'],
};

final Map<String, List<String>> kotaKecamatan = {
  'Bandung': ['Kecamatan A', 'Kecamatan B'],
  'Bogor': ['Kecamatan C', 'Kecamatan D'],
  'Semarang': ['Kecamatan E', 'Kecamatan F'],
  'Solo': ['Kecamatan G', 'Kecamatan H'],
};

final Map<String, List<String>> kecamatanKelurahan = {
  'Kecamatan A': ['Kelurahan 1', 'Kelurahan 2'],
  'Kecamatan B': ['Kelurahan 3', 'Kelurahan 4'],
  'Kecamatan C': ['Kelurahan 5', 'Kelurahan 6'],
  'Kecamatan D': ['Kelurahan 7', 'Kelurahan 8'],
  'Kecamatan E': ['Kelurahan 9', 'Kelurahan 10'],
  'Kecamatan F': ['Kelurahan 11', 'Kelurahan 12'],
  'Kecamatan G': ['Kelurahan 13', 'Kelurahan 14'],
  'Kecamatan H': ['Kelurahan 15', 'Kelurahan 16'],
};

class RegisterClaimController extends GetxController {
  // Text Editing Controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final biodataController = TextEditingController();

  // Dropdown Selections
  var selectedProvinsi = ''.obs;
  var selectedKota = ''.obs;
  var selectedKecamatan = ''.obs;
  var selectedKelurahan = ''.obs;

  // List of Dropdown Items
  var kotaList = <String>[].obs;
  var kecamatanList = <String>[].obs;
  var kelurahanList = <String>[].obs;

  // Photo Uploads
  var selfiePhoto = Rxn<XFile>();
  var ktpPhoto = Rxn<XFile>();
  var bebasPhoto = Rxn<XFile>();

  void updateKota(String provinsi) {
    selectedProvinsi.value = provinsi;
    kotaList.value = provinsiKota[provinsi] ?? [];
    selectedKota.value = '';
    updateKecamatan('');
  }

  void updateKecamatan(String kota) {
    selectedKota.value = kota;
    kecamatanList.value = kotaKecamatan[kota] ?? [];
    selectedKecamatan.value = '';
    updateKelurahan('');
  }

  void updateKelurahan(String kecamatan) {
    selectedKecamatan.value = kecamatan;
    kelurahanList.value = kecamatanKelurahan[kecamatan] ?? [];
    selectedKelurahan.value = '';
  }

  Future<void> pickImage(Rx<XFile?> imageFile, ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = pickedFile;
    }
  }

  void removeImage(Rx<XFile?> imageFile) {
    imageFile.value = null;
  }

  void showImageSourceDialog(BuildContext context, Rx<XFile?> imageFile) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Sumber Gambar'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Kamera'),
                onTap: () {
                  pickImage(imageFile, ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Galeri'),
                onTap: () {
                  pickImage(imageFile, ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
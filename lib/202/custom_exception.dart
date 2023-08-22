//extends yapamadık çünkü exceptions dosyası değiştirilebilir veya üzerine yazılabilir bir dosya değil,
//yani implements bütün özelliklerini alır ama değiştirmeye izin verir gibi bir şey.
class FileDownloadException implements Exception {
  @override
  String toString() {
    return 'File download has failed';
    //kendimize göre özelleştirmiş olduk.
  }
}

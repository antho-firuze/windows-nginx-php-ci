# windows-nginx-php-ci
Instalasi NGINX &amp; PHP di Windows untuk Codeigniter

Requirements
---
- OS: Windows 7/8/10
- NGINX version 1.13.8 or newer. [here](https://nginx.org/en/download.html)
- PHP version 7.1.9 or newer. [here](http://windows.php.net/download#php-7.2)
- Codeigniter version 3.1.7 or newer. [here](https://codeigniter.com/download)

Installation
---
1. Extract NGINX. Contoh: ``` D:\nginx ```
2. Extract PHP di dalam folder NGINX. Contoh: ``` D:\nginx\php ```
3. Buat folder htdocs atau website atau www, Kemudian extract codeigniter didalamnya. Contoh: ``` D:\htdocs\ci ```
4. Copykan nginx.conf ke folder `` D:\nginx\conf ``
5. Copykan file dibawah ini ke folder `` D:\nginx ``
```
RunHiddenConsole.exe
reload.bat
rotate.bat
start.bat
stop.bat
```
6. Setelah itu jalankan `` start.bat ``, lalu buka browser ketikkan `` localhost `` maka akan tampail Codeigniter. Kalau kita ketik `` 127.0.0.1`` maka akan tampil root folder.

Alhamdulillah sudah selesai. Terima kasih.

Contact
---
- Jika ada pertanyaan, kontak saya melalui [Facebook](https://www.facebook.com/antho.firuze)

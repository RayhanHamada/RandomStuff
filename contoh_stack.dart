import 'dart:core';

/*
* class Stack di definisikan sebagai class dengan parameter template, yang
* ditujukan agar dapat menampung elemen dengan tipe data E yang bervariasi,
* artinya tidak hanya 1 tipe data saja (contoh: Integer).
*
* */

class Stack<E> {

  /*
  * digunakan untuk menampung elemen stack.
  *
  * */
  List<E> list;

  /*
  * konstruktor Stack default
  * menciptakan Stack dengan isi yang kosong
  * */
  Stack() {
    this.list = new List<E>();
  }

  /*
  * metode push digunakan untuk memasukan elemen di posisi paling atas dari Stack
  * */
  void push(E element) {
    this.list.add(element);
  }

  /*
  * metode pop digunakan untuk mengembalikan sekaligus menghapus nilai elemen paling atas dari Stack
  * */
  E pop() {
    E sementara = this.list.last; // mengambil elemen teratas stack, lalu ditampung variabel sementara
    this.list.removeLast();  // menghapus elemen teratas pada stack
    return sementara;            // mengembalikan elemen teratas tadi
  }

  /*
  * metode peek digunakan untuk mengembalikan nilai elemen paling atas tanpa menghapusnya dari Stack
  * */
  E peek() {
    return this.list.last;
  }

  /*
  * metode count digunakan untuk menghitung banyaknya elemen dari Stack
  * */
  int count() {
    return this.list.length;
  }

  /*
  * metode clear digunakan untuk menghapus semua elemen dari Stack
  * */
  void clear() {
    this.list.clear();
  }
}


void main() {

  /*
  * test kode
  * */

  /*
  * menciptakan objek Stack bernama stackSaya yang dapat menampung elemen tipe integer (int)
  * */
  Stack<int> stackSaya = new Stack();

  /*
  * menambah 3 elemen ke stackSaya
  * */
  stackSaya.push(1);
  stackSaya.push(2);
  stackSaya.push(3);

  print("elemen pada stackSaya saat ini : ${stackSaya.list}");

  /*
  * menghapus semua elemen pada stackSaya
  * */
  stackSaya.clear();

  print("elemen pada stackSaya saat ini kosong !");
  /*
  * menambah 2 elemen ke stackSaya
  * */
  stackSaya.push(5);
  stackSaya.push(9);

  print("elemen pada stackSaya saat ini : ${stackSaya.list}");

  /*
  * mencetak banyak elemen pada stackSaya
  * */
  print("banyak elemen stackSaya saat ini : ${stackSaya.count()}");

  /*
  * mengembalikan elemen teratas pada stackSaya
  * */
  print(stackSaya.peek());

  /*
  * mengembalikan elemen teratas pada stackSaya sekaligus menghapusnya dari stackSaya
  * */
  print(stackSaya.pop());

  print(stackSaya.peek());

}
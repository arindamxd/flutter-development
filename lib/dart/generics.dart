// Generics
// Created by Arindam Karmakar on 27/8/19.

main() {
  DataHolder<String> dataHolder = DataHolder('Some Data');
  print(dataHolder.getData());

  dataHolder.setData('New Data');
  print(dataHolder.getData());
}

class DataHolder<T> {
  T data;

  DataHolder(this.data);

  getData() => data;
  setData(data) => this.data = data;
}
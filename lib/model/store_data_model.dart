class StoreData {
  int? id;
  String? storeValue;
  String? timestamp;

  StoreData({
    this.id,
    this.storeValue,
    this.timestamp,
  });

  Map<String, dynamic> toStore() {
    var map = <String, dynamic>{
      'id': id,
      'timestamp': timestamp,
      'storeValue': storeValue,
    };

    return map;
  }

  StoreData.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    timestamp = map['timestamp'];
    storeValue = map['storeValue'];
  }
}

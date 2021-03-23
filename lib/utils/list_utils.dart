/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:03
 * @Description: list builder
 */

class ListUtils {
  ListUtils._();

  /// 构建列表数据
  static List<R> listBuilder<R>(
      {required int itemCount, required R Function(int index) itemBuilder}) {
    // 目前无法保证索引越界问题
    //    if (index < 0 || (itemCount != null && index >= itemCount))
    // return null;

    List<R> newItems = [];

    for (var i = 0; i < itemCount; i++) {
      R item = itemBuilder(i);
      newItems.add(item);
    }

    return newItems;
  }
}

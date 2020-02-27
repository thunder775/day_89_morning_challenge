// Write a function to merge two sorted lists.
// The output should be a sorted list as well.
List addSortedList(List<int> l1, List<int> l2) {
  List<int> output = [];
  int p1 = 0;
  int p2 = 0;
  while (p1 < l1.length || p2 < l2.length) {
    if (p1 > l1.length - 1) {
      output.addAll(l2.sublist(p2));
      break;
    }
    if (p2 > l2.length - 1) {
      output.addAll(l1.sublist(p1));
      break;
    }
    if (l1[p1] < l2[p2]) {
      output.add(l1[p1]);
      p1++;
    } else if (l1[p1] == l2[p2]) {
      output.add(l1[p1]);
      output.add(l2[p2]);
      p1++;
      p2++;
    } else {
      output.add(l1[p1]);
      p2++;
    }
  }
  return output;
  //  l1.addAll(l2);
//  l1.sort();
//  return l1;
}

void main() {
  print(addSortedList([1, 2, 3], [3, 4]));
}

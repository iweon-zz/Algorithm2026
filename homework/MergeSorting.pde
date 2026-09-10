int[] arr;
int[] temp;

void setup() {
  intArr(16);
  printArr();

  temp = new int[arr.length];
  mergeSorting(0, arr.length-1);

  printArr();
}

void intArr(int n) {
  int i;
  arr = new int[n];

  for(i=0; i<arr.length; i++) {
    arr[i] = (int) random(100);
  }
}

void printArr() {
  int i;

  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }

  println();
}

void mergeSorting(int left, int right) {
  int mid;

  if(left < right) {
    mid = (left + right) / 2;

    mergeSorting(left, mid);
    mergeSorting(mid+1, right);

    merge(left, mid, right);
  }
}

void merge(int left, int mid, int right) {
  int i = left;
  int j = mid + 1;
  int k = left;

  while(i <= mid && j <= right) {
    if(arr[i] <= arr[j]) {
      temp[k] = arr[i];
      i++;
    } else {
      temp[k] = arr[j];
      j++;
    }
    k++;
  }

  while(i <= mid) {
    temp[k] = arr[i];
    i++;
    k++;
  }

  while(j <= right) {
    temp[k] = arr[j];
    j++;
    k++;
  }

  for(i=left; i<=right; i++) {
    arr[i] = temp[i];
  }
}

void draw() {
}

int[] list = new int[200];



int max, maxIndex, temp; 



for(int i = 0; i < list.length; i++) {

  list[i] = (int)random(1000);

}

for (int i = 0; i < list.length; i++) {
  print(list[i], " ");
}

println();

for (int i = list.length - 1; i > 0; i--) {

  max = list[0];
  maxIndex = 0;

  for (int j = 1; j <= i; j++) {
    if (max < list[j]) {
      max = list[j];
      maxIndex = j;
    }
  }

  temp = list[i];
  list[i] = list[maxIndex];
  list[maxIndex] = temp;
}

for (int i = 0; i < list.length; i++) {
  print(list[i], " ");
}

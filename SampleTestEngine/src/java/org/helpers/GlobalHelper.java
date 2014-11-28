package org.helpers;

import org.db.DbConstants;

public abstract class GlobalHelper {

  private final static boolean DEBUGGING = true;
  public final static String FILE_SEPARATOR = System.getProperty("file.separator");

  private GlobalHelper() {
  }

  public static void msg(Object obj) {
    if (DEBUGGING) {
      System.out.printf("#Debug info >>>>>%n%s%n", obj);
    }
  }

  public static boolean isUnique(int[] ids, int id) {
    for (int i = 0; i < ids.length; i++) {
      if (id == ids[i]) {
        return false;
      }
    }
    return true;
  }

  public static int[] getBlankIds() {
    int[] ids = new int[DbConstants.RESULT_SIZE];
    for (int i = 0; i < DbConstants.RESULT_SIZE; i++) {
      ids[i] = DbConstants.EMPTY_ID;
    }
    return ids;
  }

  public static boolean isValidObject(Object obj) {
    return null != obj;
  }

  public static boolean isValidString(String str) {
    return isValidObject(str) && !str.isEmpty();
  }

  public static<T> void shuffle(T[] arr) {
    if (null == arr || 1 >= arr.length) {
      return;
    }
    for (int i = 0; i < arr.length - 1; i++) {
      int t = (int) Math.floor(Math.random() * (i + 1));
      T j = arr[t];
      arr[t] = arr[t + 1];
      arr[t + 1] = j;
    }
  }

  public static <T> void print(T[] t) {
    GlobalHelper.msg("Array elements are :");
    for (T i : t) {
      System.out.printf("%s%n", i);
    }
    System.out.println();
  }
}

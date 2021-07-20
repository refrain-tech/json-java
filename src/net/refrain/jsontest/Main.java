package net.refrain.jsontest;

import org.json.JSONObject;

public class Main {
  public static void main (String[] args) {
    JSONObject obj = new JSONObject("{\"a\": \"a\"}");
    System.out.println(obj.getString("a"));
    obj.put("b", "b");
    System.out.println(obj.getString("b"));
  }
}
package ch09;

import java.sql.Date;

public class Student {
   private int id;
   private String usename;
   private String univ;
   private Date birth;
   private String email;
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   
   public String getUsername() {
      return usename;
   }
   public void setUsername(String usename) {
      this.usename = usename;
   }
   
   public String getUniv() {
      return univ;
   }
   public void setUniv(String univ) {
      this.univ = univ;
   }
   
   public Date getBirth() {
      return birth;
   }
   public void setBirth(Date birth) {
      this.birth = birth;
   }
   
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   
   
}
package com.educomser.bean;

import java.io.Serializable;

public class Empleado implements Serializable{
    
    private String nombre;
    private int edad;
    private double sueldo;
    
    public Empleado(){
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }
    
    
}

package mx.utxj.ti.estadia.model.pojos;
// Generated 23/06/2019 08:08:20 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Alumnos generated by hbm2java
 */
public class Alumnos  implements java.io.Serializable {


     private Integer id;
     private Carreras carreras;
     private String nombre;
     private String apellido;
     private int matricula;
     private Set personases = new HashSet(0);
     private Set propuestas = new HashSet(0);

    public Alumnos() {
    }

	
    public Alumnos(Carreras carreras, String nombre, String apellido, int matricula) {
        this.carreras = carreras;
        this.nombre = nombre;
        this.apellido = apellido;
        this.matricula = matricula;
    }
    public Alumnos(Carreras carreras, String nombre, String apellido, int matricula, Set personases, Set propuestas) {
       this.carreras = carreras;
       this.nombre = nombre;
       this.apellido = apellido;
       this.matricula = matricula;
       this.personases = personases;
       this.propuestas = propuestas;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Carreras getCarreras() {
        return this.carreras;
    }
    
    public void setCarreras(Carreras carreras) {
        this.carreras = carreras;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public int getMatricula() {
        return this.matricula;
    }
    
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }
    public Set getPersonases() {
        return this.personases;
    }
    
    public void setPersonases(Set personases) {
        this.personases = personases;
    }
    public Set getPropuestas() {
        return this.propuestas;
    }
    
    public void setPropuestas(Set propuestas) {
        this.propuestas = propuestas;
    }




}



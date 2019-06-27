package mx.utxj.ti.estadia.model.pojos;
// Generated 23/06/2019 08:08:20 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Asignacion generated by hbm2java
 */
public class Asignacion  implements java.io.Serializable {


     private Integer id;
     private Carreras carreras;
     private Propuesta propuesta;
     private Usuario usuario;
     private String aprobacion;
     private String quienAprobo;
     private Date fechaAprobacion;
     private Date fechaInicio;
     private Date fechaFin;

    public Asignacion() {
    }

    public Asignacion(Carreras carreras, Propuesta propuesta, Usuario usuario, String aprobacion, String quienAprobo, Date fechaAprobacion, Date fechaInicio, Date fechaFin) {
       this.carreras = carreras;
       this.propuesta = propuesta;
       this.usuario = usuario;
       this.aprobacion = aprobacion;
       this.quienAprobo = quienAprobo;
       this.fechaAprobacion = fechaAprobacion;
       this.fechaInicio = fechaInicio;
       this.fechaFin = fechaFin;
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
    public Propuesta getPropuesta() {
        return this.propuesta;
    }
    
    public void setPropuesta(Propuesta propuesta) {
        this.propuesta = propuesta;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getAprobacion() {
        return this.aprobacion;
    }
    
    public void setAprobacion(String aprobacion) {
        this.aprobacion = aprobacion;
    }
    public String getQuienAprobo() {
        return this.quienAprobo;
    }
    
    public void setQuienAprobo(String quienAprobo) {
        this.quienAprobo = quienAprobo;
    }
    public Date getFechaAprobacion() {
        return this.fechaAprobacion;
    }
    
    public void setFechaAprobacion(Date fechaAprobacion) {
        this.fechaAprobacion = fechaAprobacion;
    }
    public Date getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    public Date getFechaFin() {
        return this.fechaFin;
    }
    
    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }




}



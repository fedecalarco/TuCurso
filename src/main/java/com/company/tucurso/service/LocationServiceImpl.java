/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

/**
 *
 * @author fedec
 */


@Service
@Transactional
public class LocationServiceImpl implements LocationService{

    @Override
    public List getProvice(String pais) {

        List<String> prov = new LinkedList<String>();
        
        switch(pais){
            case "Argentina":
                prov.add("Buenos Aires");
                prov.add("Catamarca");
                prov.add("Chubut");
                prov.add("CABA");
                prov.add("Córdoba");
                prov.add("Corrientes");
                prov.add("Entre Ríos");
                prov.add("Formosa");
                prov.add("Jujuy");
                prov.add("La Pampa");
                prov.add("La Rioja");
                prov.add("Mendoza");
                prov.add("Misiones");
                prov.add("Neuquén");
                prov.add("Río Negro");
                prov.add("Salta");
                prov.add("San Luis");
                prov.add("San Juan");
                prov.add("Santa Fe");
                prov.add("Santiago del Estero");
                prov.add("Tierra del Fuego");
                prov.add("Tucumán");
            break;
            case "Uruguay":
                prov.add("Artigas");
                prov.add("Canelones");
                prov.add("Cerro Largo");
                prov.add("Colonia");
                prov.add("Durazno");
                prov.add("Flores");
                prov.add("Florida");
                prov.add("Lavalleja");
                prov.add("Maldonado");
                prov.add("Montevideo");
                prov.add("Paysandú");
                prov.add("Rio Negro");
                prov.add("Rivera");
                prov.add("Rocha");
                prov.add("Salto");
                prov.add("San José");
                prov.add("Soriano");
                prov.add("Tacurembó");
                prov.add("Treinta y Tres");
                break;
        }
        
        return prov;
    }

    @Override
    public List getCity(String province) {
        List<String> city = new LinkedList<String>();
        switch (province) {
            case "Buenos Aires":
                city.add("La Plata");
                city.add("Bahia Blanca");
                city.add("Tandil");
                city.add("Otra");
                
                
                break;
            case "CABA":
                city.add("Palermo");
                city.add("Nuñez");
                city.add("Retiro");
                break;
        }
        return city;
    }
    
}

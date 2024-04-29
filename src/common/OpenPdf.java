/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

import dao.InventoryUtils;
import java.awt.Desktop;
import java.io.File;
import javax.swing.JOptionPane;

/**
 *
 * @author ASUS
 */
public class OpenPdf {
     public static void OpenById(String id) {
        try {
            File file = new File(InventoryUtils.billPath + id + ".pdf");
            if (file.exists()) {
                Desktop.getDesktop().open(file);
            } else {
                JOptionPane.showMessageDialog(null, "File does not exist");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    } 
}

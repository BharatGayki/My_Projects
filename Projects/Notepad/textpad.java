// JAI SHREE RAM

import java.awt.*;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.*;

 class frame implements ActionListener {

JFrame f1;
JMenuBar mb1;
JMenu m1,m2,m3,m4;
JTextArea ta;
JMenuItem mi1,mi2,mi3,mi4;
JMenuItem undo_mi5,cut,copy,paste,delet;
JScrollPane scrollpane;
	frame(){


		f1 = new JFrame("Bharat ka Note Pad");
		//-------------------------------Menu Bar-----------------------------//
		mb1 = new JMenuBar();
        m1  = new JMenu("File");
        m2  = new JMenu("Edit");
        m3  = new JMenu("Format");
        m4  = new JMenu("View");
        //-------------------------------Text Area-----------------------------//
ta = new JTextArea();
 //-------------------------------Scroll Pane-----------------------------//
 scrollpane = new JScrollPane(ta);
        //-------------------------------Menu Item-----------------------------//
        mi1 = new JMenuItem("New");
        mi2 = new JMenuItem("Save");
        mi3 = new JMenuItem("Open");
//--------------------------------------Scroll Bar---------------------------//
//scrollbar = new JScrollBar();
undo_mi5 = new JMenuItem("Undo");

f1.setJMenuBar(mb1);

mb1.add(m1);
mb1.add(m2);
mb1.add(m3);
mb1.add(m4);

  f1.add(scrollpane);
//f1.add(ta);
//ta.add(scrollbar);
m1.add(mi1);
m1.add(mi2);
m1.add(mi3);

m2.add(undo_mi5);

//-------------Addition of listners---------------------//
mi3.addActionListener(this);
mi2.addActionListener(this);

f1.setVisible(true);
f1.setSize(500,500);

}// end of constructor

public void actionPerformed(ActionEvent e){


//	try{

	if(e.getSource()==mi3){// OPEN
		FileDialog fd = new FileDialog(f1,"Open",FileDialog.LOAD);
	fd.setVisible(true);///-------------copy
	String s = fd.getFile();
	System.out.println("Jai shree Ram");
	File fs = new File(fd.getFile());
	try{
	FileInputStream fs1 = new FileInputStream(fs);
	System.out.println(fs1.available());
	byte b[] = new byte[fs1.available()];

	if(fs1.read(b)!=-1)
	{

	}
System.out.println(b.length);
	ta.setText(new String(b));
}

catch(Exception e1){}


}// end of first if

if(e.getSource()==mi2){//Save
		System.out.println("Jai MataDi");
	FileDialog fd = new FileDialog(f1,"Save",FileDialog.SAVE);
	fd.setVisible(true);
 String ss = fd.getFile();
 System.out.println(ss);
 try{
	 FileOutputStream fs2 = new FileOutputStream(ss);
	 String s2 = ta.getText();
	  byte b[]  = s2.getBytes();
	  fs2.write(b);

}catch(Exception k){}

}// end of 2nd if

	}// end of action event

	}// end of class
public class textpad{
public static void main(String [] argu){

System.out.println("Jai BajrangBali");

new frame();


}

}// end of main class



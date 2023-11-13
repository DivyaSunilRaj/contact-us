package project;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JTextArea;
import javax.swing.SwingConstants;

public class Feedbac extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField description;
	private JButton sbtn;
	JLabel msg;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Feedbac frame = new Feedbac();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Feedbac() {
		setFont(new Font("Dialog", Font.BOLD, 20));
		setTitle("FEEDBACK");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblfeedback = new JLabel("FeedBack");
		lblfeedback.setFont(new Font("Times New Roman", Font.BOLD, 15));
		lblfeedback.setBounds(10, 10, 85, 31);
		contentPane.add(lblfeedback);
		
		description = new JTextField();
		description.setFont(new Font("Times New Roman", Font.PLAIN, 15));
		description.setBounds(10, 49, 416, 123);
		contentPane.add(description);
		description.setColumns(10);
		
		JButton sbtn = new JButton("SUBMIT");
		sbtn.setFont(new Font("Times New Roman", Font.BOLD, 15));
		sbtn.setBounds(314, 203, 112, 21);
		contentPane.add(sbtn);
		sbtn.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				description.setText("");
				msg.setText("Sucessfully Submitted");
				
			}
			
		});
		
		
		
		 msg = new JLabel("");
		msg.setBounds(21, 207, 208, 31);
		contentPane.add(msg);
	}
}

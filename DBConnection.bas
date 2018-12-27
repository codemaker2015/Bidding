Attribute VB_Name = "DBConnection"
Public con As New ADODB.connection
Public rec As New ADODB.Recordset
Public Sub connection()
  If con.State = 1 Then con.Close
  'con.Open ("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=VBidding;Data Source=VSOFT-PC")
  con.Open ("Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security Info=False;User ID=;Initial Catalog=VBidding;Data Source=.;Initial File Name=;Server SPN=")
End Sub
Public Sub reccheck()
  If rec.State = 1 Then rec.Close
End Sub


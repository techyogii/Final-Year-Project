/**
 *
 * @author TTA
 * This file contains the encryption and decryption functions.The algorithm followed
 * is Triple DES. The cipher text is obtained after encryption is returned.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.*;

public class EncryptDecrypt {
    public static Key key = null;
    
	 

  public static void encrypt(InputStream in, OutputStream out)
      throws NoSuchAlgorithmException, InvalidKeyException,
      NoSuchPaddingException, IOException {
      
      key = KeyGenerator.getInstance("DESede").generateKey();
     // System.out.println(key);
     
    // Create and initialize the encryption engine
    Cipher cipher = Cipher.getInstance("DESede");
    cipher.init(Cipher.ENCRYPT_MODE, key);

    // Create a special output stream to do the work for us
    CipherOutputStream cos = new CipherOutputStream(out, cipher);

    // Read from the input and write to the encrypting output stream
    byte[] buffer = new byte[2048];
    int bytesRead;
    while ((bytesRead = in.read(buffer)) != -1) {
      cos.write(buffer, 0, bytesRead);
    }
    cos.close();

    // For extra security, don't leave any plaintext hanging around memory.
    java.util.Arrays.fill(buffer, (byte) 0);
    
  }
            
     public static void decrypt(InputStream in, OutputStream out)
      throws NoSuchAlgorithmException, InvalidKeyException, IOException,
      IllegalBlockSizeException, NoSuchPaddingException,
      BadPaddingException {
    // Create and initialize the decryption engine
    Cipher cipher = Cipher.getInstance("DESede");
    cipher.init(Cipher.DECRYPT_MODE, key);

    // Read bytes, decrypt, and write them out.
    byte[] buffer = new byte[2048];
    int bytesRead;
    while ((bytesRead = in.read(buffer)) != -1) {
      out.write(cipher.update(buffer, 0, bytesRead));
      
    }

    // Write out the final bunch of decrypted bytes
    out.write(cipher.doFinal());
    out.flush();
  }
}



        
     




	


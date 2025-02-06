#### Bash Script for Encrypting Text Using AES

In Bash, you can use the `openssl` command-line tool to perform AES encryption and decryption. This tool supports various encryption algorithms, including AES, and allows you to encrypt and decrypt files or strings directly from the terminal.


---


#### Example Usage:
1. **Encrypt a File**:
   - Input file: `secret.txt`
   - Output file: `secret.enc`
   - Password: `mypassword`
   - Command: The script encrypts `secret.txt` into `secret.enc`.

2. **Decrypt a File**:
   - Input file: `secret.enc`
   - Output file: `secret_decrypted.txt`
   - Password: `mypassword`
   - Command: The script decrypts `secret.enc` back into `secret_decrypted.txt`.

This Bash script is a simple and effective way to encrypt and decrypt files using AES. It can be extended to handle additional features, such as error handling or support for different encryption algorithms.

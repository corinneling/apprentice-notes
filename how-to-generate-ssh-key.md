## In terminal
*source: [JumpCloud](https://jumpcloud.com/blog/what-are-ssh-keys/)*
*further reading: [Digital Ocean](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys#basic-connection-instructions)*

Create private key
`openssl genrsa -out private.pem 2048`

Create the corresponding public certificate
`openssl req -new -x509 -key private.pem -out cert.pem -days 1095`

You will see a prompt, and all of the items are optional to create a more secure connection

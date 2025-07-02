# Passwordless SSH Login Setup (Local -> Remote)

## 1. Generate SSH Key Pair (on local machine)

```bash
	ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

- Press Enter to accept the default location: `~/.ssh/id_rsa`.
- This creates two files `id_rsa` and `id_rsa.pub`, this last one is to be kept safe.

## 2. (if missiing) Create the .ssh directory on Remote

```bash
	ssh user@remote_host "mkdir -p ~/.ssh && chmod 700 ~/.ssh"
```

## 3. Copy Public Key to Remote

```bash 
	cat ~/.ssh/id_rsa.pub | ssh user@remote_host "cat >> ~/.ssh/authorized_keys"
```

## 4. Set Correct Permissions on Remote

```bash
	ssh user@remote_host
	chmod 600 ~/.ssh/authorized_keys
	chown -R user:user ~/.ssh
```

## 5. (Optional) Configure SSH for Easy Access

Edit `~/.ssh/config` on your local machine:

```bash
	Host remote_host_name
		HostName <remote_host>
		User <user_name>
		IdentityFile ~/.ssh/id_rsa
		
```

Then simply connect to the remote host by `ssh remote_host_name`

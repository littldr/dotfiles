function pubkey --description 'Copy PublicKey to pasteboard' --argument-names public_key_file
	if test -z "$public_key_file"
		set public_key_file 'id_rsa.pub'
	end
	set public_key_path "$HOME/.ssh/$public_key_file"
	if test -e $public_key_path
		more $public_key_path | pbcopy
		echo "=> Public key ($public_key_path) copied to pasteboard."
	else
		echo "Public key file ($public_key_path) does not exist!"
	end
end

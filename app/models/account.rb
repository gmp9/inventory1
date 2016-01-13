class Account < Object 
	attr_reader:dep, :wdl, :bal
	
	def val(amt1,amt2) 
		#print "Please enter the most recent balance: > $"
		#@bal = STDIN.gets.chomp.to_f
		@dep = amt1
		@wdl = amt2
	end
	
	def balance
        bal = bal + dep - wdl
	end
end


#print "Please enter the most recent balance: > $"
#new_bal = gets.chomp.to_f
#acct = Account.new

#while true
#	print "Please enter deposit,withdrawal: > $"
#	dep,wdl = gets.chomp.split(",")
#	dep = dep.to_f
#	wdl = wdl.to_f
#	if dep == -1.00 || wdl == -1.00
#		break
#	end
#	acct.val(dep,wdl)
	#Account.val(dep,wdl)

#	new_bal += acct.dep - acct.wdl
	#new_bal += dep - wdl
	
#end
#puts "The new balance is: $#{new_bal}"
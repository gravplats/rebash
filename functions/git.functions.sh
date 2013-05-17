glr() 
{
	gl $1..
}

girb() 
{
	grl $1 | wc -l | git rebase --interactive HEAD~$(sed "s/^ *//g")
}
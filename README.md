# lesson12


Student: [Evgeniy_Krupen](https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038655484#emplTab=general)

**1. I used previous vagrant [file](https://github.com/evgeniy-krupen/lesson12/blob/master/Vagrantfile)**

**2. I set up module on puppet server**

$ puppet module install puppetlabs-mysql

**3. I created manifest [site.pp](https://github.com/evgeniy-krupen/lesson12/blob/master/site.pp) with mysql**

I learned [docs](https://forge.puppet.com/puppetlabs/mysql/2.2.3)

and I tried defines and providers to created db, user, grants.

I will be glad if you check my [puppet.log](https://github.com/evgeniy-krupen/lesson12/blob/master/puppet-client.log)

I checked mysql on puppet client:
![](/source/mysql.png)

I checked my sql when I've created second user:
![](https://github.com/evgeniy-krupen/lesson12/blob/master/source/mysql2.png)


Author.delete_all
Book.delete_all
Genre.delete_all
Checkout.delete_all
User.delete_all
Hold.delete_all



u1 = User.create(:first_name => 'jim', :last_name => 'smith', :phone => '+14254429308', :email => 'joe.waine@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:first_name => 'temple', :last_name => 'vibe', :phone => '+14254409908', :email => 'templevibe@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:first_name => 'jos', :last_name => 'waine', :phone => '+14254497308', :email => 'jos.waine@arts.cornish.edu', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:first_name => 'paul', :last_name => 'green', :phone => '+14254490308', :email => 'p@gmail.com', :password => 'p', :password_confirmation => 'p')
u1.is_admin = true
u1.save

a1 = Author.create(:first_name => 'chris', :last_name => 'hitchens')
a2 = Author.create(:first_name => 'zadie', :last_name => 'smith')
a3 = Author.create(:first_name => 'robert', :last_name => 'frost')
a4 = Author.create(:first_name => 'roald', :last_name => 'dahl')

b1 = Book.create(:title => 'White Teeth', :isbn => '9780141002606', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b2 = Book.create(:title => 'God Is Not Great', :isbn => '9780771041433', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b3 = Book.create(:title => 'James and the Giant Peach', :isbn => '9781850899310', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b4 = Book.create(:title => 'Mountain Interval', :isbn => '9780548458563', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)

g1 = Genre.create(:name => 'fantasy')
g2 = Genre.create(:name => 'philosophy')
g3 = Genre.create(:name => 'biography')
g4 = Genre.create(:name => 'poetry')

a1.books << b1
a2.books << b2
a3.books << b3
a4.books << b4

b1.authors << a1
b2.authors << a2
b3.authors << a3
b4.authors << a4

b1.genres << g1
b2.genres << g2
b3.genres << g3
b4.genres << g4

g1.books << b1
g2.books << b2
g3.books << b3
g4.books << b4





Author.delete_all
Book.delete_all
Genre.delete_all
Publication.delete_all
PublicationCheckout.delete_all
BookCheckout.delete_all
Checkout.delete_all
User.delete_all


c1 = Checkout.create(:start_date => '06/05/2013')
c2 = Checkout.create(:start_date => '07/05/2013')
c3 = Checkout.create(:start_date => '08/05/2013')
c4 = Checkout.create(:start_date => '09/05/2013')

u1 = User.create(:first_name => 'jim', :last_name => 'smith', :phone => '+14254429308', :email => 'jim@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:first_name => 'tim', :last_name => 'woods', :phone => '+14254409908', :email => 'tim@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:first_name => 'sim', :last_name => 'burke', :phone => '+14254497308', :email => 'sim@gmail.com', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:first_name => 'lim', :last_name => 'minami', :phone => '+16254429308', :email => 'lim@gmail.com', :password => 'a', :password_confirmation => 'a')
u1.is_admin = true
u1.save

a1 = Author.create(:first_name => 'chris', :last_name => 'hitchens')
a2 = Author.create(:first_name => 'zadie', :last_name => 'smith')
a3 = Author.create(:first_name => 'robert', :last_name => 'frost')
a4 = Author.create(:first_name => 'roald', :last_name => 'dahl')

b1 =  Book.create(:title => 'White Teeth', :image => 'whiteteeth.jpg', :isbn => '9780141002606', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b2 =  Book.create(:title => 'God Is Not Great', :image => 'godisnotgreat.jpg', :isbn => '9780771041433', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b3 =  Book.create(:title => 'James and the Giant Peach', :image => 'giantpeach.jpg', :isbn => '9781850899310', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)
b4 =  Book.create(:title => 'Mountain Interval', :image => 'mountaininterval.jpg', :isbn => '9780548458563', :in_collection => true, :total_copies => 1, :copies_available => 1, :loan_duration => 7, :is_checked_out => false)

g1 = Genre.create(:name => 'fantasy')
g2 = Genre.create(:name => 'philosophy')
g3 = Genre.create(:name => 'biography')
g4 = Genre.create(:name => 'poetry')

p1 = Publication.create(:publication_title => 'n+1', :issue_title => 'the womens issue', :issue_date => 'march', :total_copies => '1', :copies_available => '1', :in_collection => true, :loan_duration => 7)
p2 = Publication.create(:publication_title => 'beano', :issue_title => 'the funny issue', :issue_date => 'april', :total_copies => '1', :copies_available => '1', :in_collection => true, :loan_duration => 7)
p3 = Publication.create(:publication_title => 'guitar weekly', :issue_title => 'the bass issue', :issue_date => 'september', :total_copies => '1', :copies_available => '1', :in_collection => true, :loan_duration => 7)
p4 = Publication.create(:publication_title => 'lesbian and gay magazine', :issue_title => 'the straight issue', :issue_date => 'january', :total_copies => '1', :copies_available => '1', :in_collection => true, :loan_duration => 7)


l1 = PublicationCheckout.create(:checkout_id => 1, :publication_id => 1, :due_date => '05/05/2013')
l2 = PublicationCheckout.create(:checkout_id => 2, :publication_id => 2, :due_date => '06/05/2013')
l3 = PublicationCheckout.create(:checkout_id => 3, :publication_id => 3, :due_date => '07/05/2013')
l4 = PublicationCheckout.create(:checkout_id => 4, :publication_id => 4, :due_date => '08/05/2013')

o1 = BookCheckout.create(:checkout_id => 1, :book_id => 1, :due_date => '05/05/2013')
o2 = BookCheckout.create(:checkout_id => 2, :book_id => 2, :due_date => '06/05/2013')
o3 = BookCheckout.create(:checkout_id => 3, :book_id => 3, :due_date => '07/05/2013')
o4 = BookCheckout.create(:checkout_id => 4, :book_id => 4, :due_date => '08/05/2013')

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

p1.genres << g1
p2.genres << g2
p3.genres << g3
p4.genres << g4

g1.books << b1
g2.books << b2
g3.books << b3
g4.books << b4



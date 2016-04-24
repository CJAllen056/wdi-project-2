User.destroy_all
Group.destroy_all
Book.destroy_all
Genre.destroy_all

genres = [
	{ name: "Adventure Stories & Action" }, #0
	{ name: "Anthologies" },
	{ name: "Biographical Fiction" },
	{ name: "Classics" },
	{ name: "Contemporary Fiction" },
	{ name: "Crime, Thrillers & Mystery" }, #5
	{ name: "Erotica" },
	{ name: "Family Sagas" },
	{ name: "Fantasy" },
	{ name: "Film & Television Tie-In" },
	{ name: "Gay & Lesbian" }, #10
	{ name: "Historical" },
	{ name: "Horror" },
	{ name: "Humour" },
	{ name: "Lad Lit" },
	{ name: "Literary Fiction" }, #15
	{ name: "Medical" },
	{ name: "Metaphysical & Visionary" },
	{ name: "Myths & Fairy Tales" },
	{ name: "Poetry & Drama" },
	{ name: "Political" }, #20
	{ name: "Psychological" },
	{ name: "Religious & Inspirational" },
	{ name: "Romance" },
	{ name: "Science Fiction" },
	{ name: "Short Stories" }, #25
	{ name: "Sport" },
	{ name: "War" },
	{ name: "Westerns" },
	{ name: "Women Writers & Fiction" },
	{ name: "Biography" }, #30
	{ name: "Comics & Graphic Novels" },
	{ name: "Food & Drink" },
	{ name: "Music, Stage & Screen" },
	{ name: "Science & Nature" },
	{ name: "Society, Politics & Philosophy" }, #35
	{ name: "Sport, Hobbies & Games" },
	{ name: "Young Adult" },
	{ name: "Children's Books" },
	{ name: "Fiction" },
	{ name: "Non-Fiction" } #40
]

modelled_genres = []
genres.each do |genre|
	modelled_genre = Genre.create!(genre)
	modelled_genres << modelled_genre
end

books = [
	{
		title: "Harry Potter and the Goblet of Fire",
		author: "J K Rowling",
		release_date: 2000,
		description: "The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn't stop Harry dreaming that he will win the competition. Then at Hallowe'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!",
		publisher: "Bloomsbury Childrens",
		cover_image: "https://images-na.ssl-images-amazon.com/images/I/51FefEwWQUL.jpg"
	},
	{
		title: "Nineteen Eighty-Four",
		author: "George Orwell",
		release_date: 1949,
		description: "Hidden away in the Record Department of the sprawling Ministry of Truth, Winston Smith skilfully rewrites the past to suit the needs of the Party. Yet he inwardly rebels against the totalitarian world he lives in, which demands absolute obedience and controls him through the all-seeing telescreens and the watchful eye of Big Brother, symbolic head of the Party. In his longing for truth and liberty, Smith begins a secret love affair with a fellow-worker Julia, but soon discovers the true price of freedom is betrayal.",
		publisher: "Penguin Classics",
		cover_image: "https://images-na.ssl-images-amazon.com/images/I/31-FPUFiWCL.jpg"
	},
	{
		title: "Jane Eyre",
		author: "Charlotte Bronte",
		release_date: 1847,
		description: "Jane Eyre ranks as one of the greatest and most perennially popular works of English fiction. Although the poor but plucky heroine is outwardly of plain appearance, she possesses an indomitable spirit, a sharp wit and great courage.
She is forced to battle against the exigencies of a cruel guardian, a harsh employer and a rigid social order. All of which circumscribe her life and position when she becomes governess to the daughter of the mysterious, sardonic and attractive Mr Rochester.
However, there is great kindness and warmth in this epic love story, which is set against the magnificent backdrop of the Yorkshire moors. Ultimately the grand passion of Jane and Rochester is called upon to survive cruel revelation, loss and reunion, only to be confronted with tragedy.",
		publisher: "Wordsworth Editions",
		cover_image: "https://images-na.ssl-images-amazon.com/images/I/719hHFo9NOL.jpg"
	},
	{
		title: "The Sympathizer",
		author: "Viet Thanh Nguyen",
		release_date: 2016,
		description: "It is April 1975, and Saigon is in chaos. At his villa, a general of the South Vietnamese army is drinking whiskey and, with the help of his trusted captain, drawing up a list of those who will be given passage aboard the last flights out of the country. The general and his compatriots start a new life in Los Angeles, unaware that one among their number, the captain, is secretly observing and reporting on the group to a higher-up in the Viet Cong. The Sympathizer is the story of this captain: a man brought up by an absent French father and a poor Vietnamese mother, a man who went to university in America, but returned to Vietnam to fight for the Communist cause. A gripping spy novel, an astute exploration of extreme politics, and a moving love story, The Sympathizer explores a life between two worlds and examines the legacy of the Vietnam War in literature, film, and the wars we fight today.",
		publisher: "Corsair",
		cover_image: "https://images-na.ssl-images-amazon.com/images/I/51nN1AOpHZL.jpg"
	},
	{
		title: "Superintelligence: Paths, Dangers, Strategies",
		author: "Nick Bostrum",
		release_date: 2014,
		description: "The human brain has some capabilities that the brains of other animals lack. It is to these distinctive capabilities that our species owes its dominant position. Other animals have stronger muscles or sharper claws, but we have cleverer brains. 
If machine brains one day come to surpass human brains in general intelligence, then this new superintelligence could become very powerful. As the fate of the gorillas now depends more on us humans than on the gorillas themselves, so the fate of our species then would come to depend on the actions of the machine superintelligence. 
But we have one advantage: we get to make the first move. Will it be possible to construct a seed AI or otherwise to engineer initial conditions so as to make an intelligence explosion survivable? How could one achieve a controlled detonation? ",
		publisher: "OUP Oxford",
		cover_image: "https://images-na.ssl-images-amazon.com/images/I/51NCmQOBKLL.jpg"
	}
]

modelled_books = []
books.each do |book|
	modelled_book = Book.create!(book)
	modelled_books << modelled_book
end

users = [
	{
		username: "CJAllen056",
		profile_picture: "https://scontent-lhr3-1.xx.fbcdn.net/hphotos-xat1/t31.0-8/11241030_10156133174470507_7445119115865259163_o.jpg",
		fname: "Chris",
		lname: "Allen",
		user_type: "admin",
		email: "chris@chris.com",
		password: "password"
	},
	{
		username: "BookLover12",
		profile_picture: "http://orig03.deviantart.net/4d9a/f/2012/339/9/6/book_lover_by_alephunky-d5n51jc.jpg",
		fname: "Jemima",
		lname: "Brown",
		user_type: "user",
		email: "jemima@jemima.com",
		password: "password"
	},
	{
		username: "CBenn",
		profile_picture: "https://avatars.slack-edge.com/2016-01-31/19922600161_4eb3a2bbbf1de91b2400_1024.jpg",
		fname: "Caroline",
		lname: "Benn",
		user_type: "user",
		email: "caroline@caroline.com",
		password: "password"
	},
	{
		username: "OHoldme",
		profile_picture: "https://avatars.slack-edge.com/2016-03-10/25854506177_15f336f2c17397f04a3c_1024.jpg",
		fname: "Oliver",
		lname: "Holden",
		user_type: "user",
		email: "ollie@ollie.com",
		password: "password"
	},
	{
		username: "Usher21",
		profile_picture: "http://science-all.com/images/usher/usher-01.jpg",
		fname: "Usher",
		lname: "Raymond",
		user_type: "user",
		email: "usher@usher.com",
		password: "password"
	},
	{
		username: "Kells",
		profile_picture: "http://news.hiphopearly.com/wp-content/uploads/2015/11/R-Kelly.jpg",
		fname: "Robert",
		lname: "Kelly",
		user_type: "user",
		email: "rkelly@rkelly.com",
		password: "password"
	}
]

modelled_users = []
users.each do |user|
	modelled_user = User.create!(user)
	modelled_users << modelled_user
end

groups = [
	{
		name: "Sci-Fi Readers Group",
		description: "We are a group of sci-fi fiction enthusiasts who mainly read new sci-fi releases as well as some classics.",
		group_image: "http://www.edugeek.net/attachments/forums/general-chat/22993d1393250946-logo-engraving-hitchhikers-guide-galaxy-logo.png",
		offline: false,
		group_type: "public",
		current_book_id: 2
	},
	{
		name: "London Womens Reading Group",
		description: "This group is exclusively for women. We read a wide range of genres and hold regular voting sessions to choose which book we will be reading.",
		group_image: "http://1.bp.blogspot.com/-zMyWEpEUrbo/TVtTtp56avI/AAAAAAAAAAM/pHzfIhzthZ4/s1600/bookclub.jpg",
		offline: true,
		group_type: "private",
		current_book_id: 3
	},
	{
		name: "Book Club Staff Group",
		description: "Private group for staff members at The Book Club",
		group_image: "",
		offline: true,
		group_type: "hidden",
		current_book_id: 4
	}
]

modelled_groups = []
groups.each do |group|
	modelled_group = Group.create!(group)
	modelled_groups << modelled_group
end


modelled_books[0].genres << modelled_genres[0]
modelled_books[0].genres << modelled_genres[8]
modelled_books[0].genres << modelled_genres[37]
modelled_books[0].genres << modelled_genres[38]
modelled_books[0].genres << modelled_genres[39]

modelled_books[1].genres << modelled_genres[3]
modelled_books[1].genres << modelled_genres[20]
modelled_books[1].genres << modelled_genres[24]
modelled_books[1].genres << modelled_genres[39]

modelled_books[2].genres << modelled_genres[2]
modelled_books[2].genres << modelled_genres[3]
modelled_books[2].genres << modelled_genres[15]
modelled_books[2].genres << modelled_genres[29]
modelled_books[2].genres << modelled_genres[39]

modelled_books[3].genres << modelled_genres[4]
modelled_books[3].genres << modelled_genres[11]
modelled_books[3].genres << modelled_genres[20]
modelled_books[3].genres << modelled_genres[27]

modelled_books[4].genres << modelled_genres[34]
modelled_books[4].genres << modelled_genres[40]

modelled_books[0].users << modelled_users[0]
modelled_books[0].users << modelled_users[1]
modelled_books[0].users << modelled_users[3]

modelled_books[1].users << modelled_users[0]
modelled_books[1].users << modelled_users[2]
modelled_books[1].users << modelled_users[4]

modelled_books[2].users << modelled_users[1]
modelled_books[2].users << modelled_users[2]
modelled_books[2].users << modelled_users[5]

modelled_books[3].users << modelled_users[3]
modelled_books[3].users << modelled_users[4]
modelled_books[3].users << modelled_users[5]

modelled_books[4].users << modelled_users[0]

modelled_books[0].groups << modelled_groups[1]
modelled_books[0].groups << modelled_groups[2]

modelled_books[1].groups << modelled_groups[0]

modelled_books[2].groups << modelled_groups[1]

modelled_books[4].groups << modelled_groups[2]

modelled_groups[0].users << modelled_users[0]
modelled_groups[0].users << modelled_users[1]
modelled_groups[0].users << modelled_users[3]
modelled_groups[0].users << modelled_users[4]
modelled_groups[0].users << modelled_users[5]

modelled_groups[1].users << modelled_users[1]
modelled_groups[1].users << modelled_users[2]

modelled_groups[2].users << modelled_users[0]
modelled_groups[2].users << modelled_users[2]
modelled_groups[2].users << modelled_users[3]














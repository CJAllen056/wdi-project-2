User.destroy_all
Group.destroy_all
Book.destroy_all
Genre.destroy_all

[
	{ name: "Art, Architecture and Photography" },
	{ name: "Biography" },
	{ name: "Business, Finance and Law" },
	{ name: "Children's Books" },
	{ name: "Comics and Graphic Novels" },
	{ name: "Computing and Internet" },
	{ name: "Crime, Thrillers and Mystery" },
	{ name: "Education Studies and Teaching" },
	{ name: "Fiction" },
	{ name: "Food and Drink" },
	{ name: "Gay and Lesbian" },
	{ name: "Health, Family and Lifestyle" },
	{ name: "History" },
	{ name: "Home and Garden" },
	{ name: "Horror" },
	{ name: "Humour" },
	{ name: "Languages" },
	{ name: "Mind, Body and Spirit" },
	{ name: "Music, Stage and Screen" },
	{ name: "Poetry, Drama and Criticism" },
	{ name: "Religion and Spirituality" },
	{ name: "Romance" },
	{ name: "Science and Nature" },
	{ name: "Science Fiction and Fantasy" },
	{ name: "Society, Politics and Philosophy" },
	{ name: "Sports, Hobbies and Games" },
	{ name: "Travel and Holiday" },
	{ name: "Young Adult" }
].each do |genre|
	Genre.create!(genre)
end
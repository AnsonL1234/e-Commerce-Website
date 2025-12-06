use ecommerce;

create table `User` (
	UserID int auto_increment primary key not null, 
    username varchar(50) not null, 
    `password` varchar(50) not null, 
    first_name varchar(50) not null, 
    last_name varchar(50) not null, 
    balance double , 
    email_address varchar(50) not null
);

create table `Item` (
	ItemID int auto_increment primary key not null,
	BuyerID int, 
    SellerID int,
	item_images varchar(255), 
    title varchar(50) not null, 
    description varchar(50) not null, 
    quantity int, 
    price double not null, 
    categorise varchar(50) not null, 
    foreign key (BuyerID) references `User`(UserID), 
    foreign key (SellerID) references `User`(UserID)
)ENGINE=InnoDB AUTO_INCREMENT=10;

create table `Bid` (
	BidID int auto_increment primary key not null,
    BidderID int, 
    ItemID int not null, 
    BidAmount double, 
    FinalAmount double, 
    foreign key (BidderID) references `User`(UserID), 
    foreign key (ItemID) references `Item`(ItemID)
)ENGINE=InnoDB AUTO_INCREMENT=100;


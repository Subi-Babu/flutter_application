class Store{
  String ? Name;
  String ? itemImage;
  Store.items({
    this.itemImage,
    this.Name,
   
});

}

List<Store> storeItems =[

  Store.items(
      Name: "NEWYORK",
      itemImage: "https://www.shutterstock.com/image-photo/new-york-city-manhattan-downtown-600w-1157154070.jpg",
      ),
 Store.items(
      Name: "LONDON",
      itemImage: "https://www.shutterstock.com/image-photo/panorama-tower-bridge-sunset-london-600w-750033364.jpg",
      ),

  Store.items(
      Name: "CANADA",
      itemImage: "https://www.shutterstock.com/image-photo/vancouver-skyline-reflection-sunset-600w-417849331.jpg",
      ),

  Store.items(
      Name: "FRANCE",
      itemImage: "https://www.shutterstock.com/image-photo/paris-france-23-may-2005-600w-1936635214.jpg",
      )
  
];
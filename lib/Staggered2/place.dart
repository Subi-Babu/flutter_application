
class place{
  late String title;
  late String subtitle;
  late String img;
  late String subtitle2;
  late String height;

  place(this.title,this.subtitle,this.subtitle2,this.img,this.height);

  static List<place>genplaces(){
    return [
      place("Besides Trees and houses", "Carl Sagar", "(20 jan2021)", 'https://images.pexels.com/photos/1831545/pexels-photo-1831545.jpeg?cs=srgb&dl=pexels-rudolf-kirchner-1831545.jpg&fm=jpg&_gl=1*1rcamxy*_ga*NjkyODEwNTA3LjE2Njg2MDc4Mjg.*_ga_8JE65Q40S6*MTY2ODYxMTMxMS4yLjEuMTY2ODYxMjc3MS4wLjAuMA..', '240'),
      place("Rocks", 'Kelly', '(15 jun 2020)', 'https://images.pexels.com/photos/257352/pexels-photo-257352.jpeg?auto=compress&cs=tinysrgb&w=600',"200"),
     // place(title, subtitle, subtitle2, img, height),
     // place(title, subtitle, subtitle2, img, height),

    ];
  }
}
 class Event1{
   String title;
   // ignore: non_constant_identifier_names
   String society_name;
   String desc;
   String start;
   String end;
   //double budget;
   String loc;
   int number;
   bool spacepermi;
   bool eventpermi;

   Event1(
    this.title,
    this.start,
    this.end,
    this.desc,
   // this.budget,
    this.eventpermi,
    this.spacepermi,
    this.loc,
    this.number,
    this.society_name
   );

   Map<String,dynamic> toJSON()=>{
    'eventName' : title,
    'startDate' : start,
    'endDate' : end,
    'description': desc,
    'society' : society_name,
    'location' :loc,
    'studentNumber' : number,
    'spacePermi' : spacepermi,
    'eventPermi' : eventpermi
   };
 }

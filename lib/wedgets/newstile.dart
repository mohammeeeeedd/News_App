import 'package:flutter/material.dart';
import 'package:prog_project/modules/articlemodel.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articlemodel});
final Articlemodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
        
         
        
          articlemodel.image??"https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg?w=900&t=st=1726216654~exp=1726217254~hmac=ebe93e5d7e7cdca31dc51e551269d09a36201ff0a029e8c08cad3986b9c93c3e",
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        
        ),
       ),
      SizedBox(
        height: 12,
      ),
      Text( articlemodel.title ,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
style: TextStyle(
  color: Colors.black87,
  fontSize: 24,
  fontWeight: FontWeight.w500
),
      ),
      SizedBox(
        height: 8,
      ),
       Text( articlemodel.subtitle ??"" ,
      maxLines: 2,
style: TextStyle(
  color: Colors.grey,
  fontSize: 14,
),
      ),
    ],
    );
  }
}
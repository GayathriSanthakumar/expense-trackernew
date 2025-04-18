//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController=TextEditingController();
  TextEditingController categoryController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  DateTime selectDate =DateTime.now();
  @override
  void initState() {
    dateController.text= DateFormat('dd/MM/yy').format( DateTime.now());
    super.initState();
  }
  @override//navigator to home screen
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
         backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add Expenses",
                style:TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ) ,
              ),
               const SizedBox(height: 32,),
               SizedBox(
                width: MediaQuery.of(context).size.width*0.7,
                child:TextFormField(
                  controller: expenseController,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  prefixIcon: Icon(
                    FontAwesomeIcons.dollarSign,size:16,
                    color: Color.fromARGB(255, 95, 95, 95),),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)//addexpense curve
                  ),
                )
                ),
              ),
               const SizedBox(height: 32,),
               TextFormField(
                controller: categoryController,
                textAlignVertical: TextAlignVertical.center,
                readOnly: true,
                onTap: (){

                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  prefixIcon: Icon(
                    FontAwesomeIcons.list,size:16,
                    color: Color.fromARGB(255, 95, 95, 95),
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                           builder:(ctx){
                            return AlertDialog(
                              content: Column(
                                 mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height:16 ,),
                                  TextFormField(
                  //controller: dateController,
                  textAlignVertical: TextAlignVertical.center,
                  //readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  label: const Text('Name'),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)//addexpense curve
                  ),
                )
                ),
                const SizedBox(height:16 ,),
                TextFormField(
                  //controller: dateController,
                  textAlignVertical: TextAlignVertical.center,
                  //readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  label: const Text('Icon'),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)//addexpense curve
                  ),
                )
                ),
                const SizedBox(height:16 ,),
                TextFormField(
                  //controller: dateController,
                  textAlignVertical: TextAlignVertical.center,
                  //readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  label: const Text('Color'),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)//addexpense curve
                  ),
                )
                ),
                                ],
                              ),
                            );
                           }
                           );
                      },
                   icon:Icon(
                     FontAwesomeIcons.plus,size:16,
                    color: Color.fromARGB(255, 95, 95, 95),
                    )
                    ),
                  label: const Text('Category'),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)//addexpense curve
                  ),
                )
                ),
               const SizedBox(height: 16,),
                TextFormField(
                  controller: dateController,
                  textAlignVertical: TextAlignVertical.center,
                  readOnly: true,
                  onTap: ()async{
                    DateTime? newDate=await showDatePicker(
                      context: context,
                      initialDate: selectDate,
                       firstDate: DateTime.now(),
                        lastDate:  DateTime.now().add(const Duration(days:365))//calender
                        );
                        if (newDate!=null){
                          setState(() {
                             dateController.text= DateFormat('dd/MM/yy').format(newDate);
                             selectDate=newDate;
                          });
                        }
                  },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  prefixIcon: Icon(
                    FontAwesomeIcons.clock,size:16,
                    color: Color.fromARGB(255, 95, 95, 95),
                    ),
                  label: const Text('Date'),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)//addexpense curve
                  ),
                )
                ),
                const SizedBox(height: 32,),
                SizedBox(
                  width: double.infinity,
                  height: kToolbarHeight,
                  child: TextButton(
                    onPressed:(){},
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(251, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                   child: Text(
                      'save',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                  )
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
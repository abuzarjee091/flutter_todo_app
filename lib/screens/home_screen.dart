import 'package:flutter/material.dart';
import 'package:todo/data/model/model.dart';
import 'package:todo/utils/utils.dart';
import 'package:todo/widgets/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:gap/gap.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color:colors.primary,
        
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                        text: 'May 27,2025',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,)
                    , DisplayWhiteText(
                        text: 'My Todo',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,)],
                  ),
                
              ),
             
              
            ],
            
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            bottom: 0,
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DisplayListOfTasks(
                          tasks:[
                            Task(title:'title',
                             note:'note',
                              time:'12:34', date:'May 29,2025', 
                              isCompleted:false,
                              category: TaskCategories.education ),
                               Task(title:'title',
                             note:'note',
                              time:'12:34', date:'May 29,2025', 
                              isCompleted:false,
                              category: TaskCategories.health )
                          ] 
                        ),
                       const Gap(20),
                    Text('completed', style: context.textTheme.headlineMedium),
                    const Gap(20),
                    
                   DisplayListOfTasks(
                          tasks:[
                            Task(title:'title',
                             note:'note',
                              time:'12:34', date:'May 29,2025', 
                              isCompleted:true,
                              category: TaskCategories.personal ),
                               Task(title:'title',
                             note:'note',
                              time:'12:34', date:'May 29,2025', 
                              isCompleted:true,
                              category: TaskCategories.home )
                          ] ,
                          isCompletedTasks: true,
                        ),
                    const Gap(20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: context.colorScheme.primary), 
                      onPressed: (){},
                     child: Padding(
                    
                       padding: const EdgeInsets.all(8.0),
                       child: const DisplayWhiteText(text: 'add new task'),
                      
                          
                              )
                              
                              ),
                              const Gap(20)
                           ] ),
                            ),
                )
                  )
                 
              
          
        ],
      )
    );
}
}
// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
//var label = Ti.UI.createLabel();
//win.add(label);
var testmodule;

var scrollViewer = Ti.UI.createScrollView({
                                          contentWidth: 'auto',
                                          contentHeight: 600,
                                          backgroundColor: '#c5c5c5',
                                          });

win.add(scrollViewer);
win.open();

var button1=Ti.UI.createButton({
                                title:'Require Module',
                                top:10,
                                height:50,
                                width:300
                                });

button1.addEventListener('click',function(){
                                    testmodule = require('ti.sample.test');
                                    
                                    alert(testmodule);
                                    Ti.API.info("module is => " + testmodule);
                                    
                                    });


scrollViewer.add(button1);

var button2=Ti.UI.createButton({
                               title:'Module Method Call',
                               top:60,
                               height:50,
                               width:300
                               });

button2.addEventListener('click',function(){
                                    alert("testmodule.example()"+ testmodule.example());                                    
                                    });


scrollViewer.add(button2); 


var button3=Ti.UI.createButton({
                               title:'Sample Proxy Creation',
                               top:110,
                               height:50,
                               width:300
                               });

var SampleProxyObj1;
button3.addEventListener('click',function(){
                                    SampleProxyObj1 = testmodule.createSample();
                                    
                                    alert(SampleProxyObj1);                                   
                                    });


scrollViewer.add(button3);

var button4=Ti.UI.createButton({
                               title:'Sample Proxy Method Calling',
                               top:160,
                               height:50,
                               width:300
                               });

button4.addEventListener('click',function(){
                                    alert("SampleProxyObj1.funcSaring()::" + SampleProxyObj1.funcSaring());
                                    
                                    alert("SampleProxyObj1.funcSaringWithReturnTypeId()::" + SampleProxyObj1.funcSaringWithReturnTypeId());
                                    
                                    alert("SampleProxyObj1.funcNumber()::" + SampleProxyObj1.funcNumber());
                                    
                                    alert("SampleProxyObj1.funcNumberWithReturnTypeId()::" + SampleProxyObj1.funcNumberWithReturnTypeId());
                                    
                                    alert("SampleProxyObj1.funcNumberorStringWithReturnTypeId()::" + SampleProxyObj1.funcNumberorStringWithReturnTypeId());
                                    
                                    alert("SampleProxyObj1.JSONReturn()::" + SampleProxyObj1.JSONReturn());
                                    
                                    alert("SampleProxyObj1.JSONReturnWithreturnTypeId()::" + SampleProxyObj1.JSONReturnWithreturnTypeId());
                                 
                                    });


scrollViewer.add(button4);



var button5=Ti.UI.createButton({
                               title:'Sample Proxy With JSON Creation',
                               top:210,
                               height:50,
                               width:300
                               });

var SampleProxyObj2;

button5.addEventListener('click',function(){
                                    SampleProxyObj2 = testmodule.createSample({
                                                                                  "name":"ashish",
                                                                                  "reason":"understanding"
                                                                                  });
                                    
                                    alert(SampleProxyObj2);                                 
                                    });


scrollViewer.add(button5);

var button6=Ti.UI.createButton({
                               title:'JSON Sample Proxy Method Calling',
                               top:260,
                               height:50,
                               width:300
                               });

button6.addEventListener('click',function(){
                                    alert("SampleProxyObj2.funcSaring()::" + SampleProxyObj2.funcSaring());
                                    
                                    alert("SampleProxyObj2.funcSaringWithReturnTypeId()::" + SampleProxyObj2.funcSaringWithReturnTypeId());
                                    
                                    alert("SampleProxyObj2.funcNumber()::" + SampleProxyObj2.funcNumber());
                                    
                                    alert("SampleProxyObj2.funcNumberWithReturnTypeId()::" + SampleProxyObj2.funcNumberWithReturnTypeId());
                                    
                                    alert("SampleProxyObj2.funcNumberorStringWithReturnTypeId()::" + SampleProxyObj2.funcNumberorStringWithReturnTypeId());
                                    
                                    alert("SampleProxyObj2.JSONReturn()::" + SampleProxyObj2.JSONReturn());
                                    
                                    alert("SampleProxyObj2.JSONReturnWithreturnTypeId()::" + SampleProxyObj2.JSONReturnWithreturnTypeId());
                                
                                    });


scrollViewer.add(button6);




var button7=Ti.UI.createButton({
                               title:'Sample View Proxy Creation',
                               top:310,
                               height:50,
                               width:300
                               });


var SampleViewObj1;

button7.addEventListener('click',function(){
                                    SampleViewObj1 = testmodule.createSampleView();
                                    
                                    alert(SampleViewObj1);                                  
                                    });


scrollViewer.add(button7);


var button8=Ti.UI.createButton({
                               title:'Sample View Proxy ADD to View',
                               top:360,
                               height:50,
                               width:300
                               });

button8.addEventListener('click',function(){
                                   win.add(SampleViewObj1);                               
                                    });


scrollViewer.add(button8);



var button9=Ti.UI.createButton({
                               title:'Sample View Proxy Method Calling',
                               top:410,
                               height:50,
                               width:300
                               });

button9.addEventListener('click',function(){
                                    alert("SampleViewObj1.funcSaring()::" + SampleViewObj1.funcSaring());
                                    
                                    alert("SampleViewObj1.funcSaringWithReturnTypeId()::" + SampleViewObj1.funcSaringWithReturnTypeId());
                                    
                                    alert("SampleViewObj1.funcNumber()::" + SampleViewObj1.funcNumber());
                                    
                                    alert("SampleViewObj1.funcNumberWithReturnTypeId()::" + SampleViewObj1.funcNumberWithReturnTypeId());
                                    
                                    alert("SampleViewObj1.funcNumberorStringWithReturnTypeId()::" + SampleViewObj1.funcNumberorStringWithReturnTypeId());
                                    
                                    alert("SampleViewObj1.JSONReturn()::" + SampleViewObj1.JSONReturn());
                                    
                                    alert("SampleViewObj1.JSONReturnWithreturnTypeId()::" + SampleViewObj1.JSONReturnWithreturnTypeId());
                                 
                                    });


scrollViewer.add(button9);


var button10=Ti.UI.createButton({
                               title:'Sample View Proxy With JSON Creation',
                               top:460,
                               height:50,
                               width:300
                               });

var SampleViewObj2;

button10.addEventListener('click',function(){
                                    SampleViewObj2 = testmodule.createSampleView({
                                                                                     "color":"red",
                                                                                     "width":50,
                                                                                     "height":50
                                                                                     });
                                    
                                    alert(SampleViewObj2); 
                                    });


scrollViewer.add(button10);



var button11=Ti.UI.createButton({
                               title:'JSON Sample View Proxy ADD to View',
                               top:510,
                               height:50,
                               width:300
                               });

button11.addEventListener('click',function(){
                                   win.add(SampleViewObj2);                                 
                                    });


scrollViewer.add(button11);


var button12=Ti.UI.createButton({
                               title:'JSON Sample View Proxy Method Calling',
                               top:560,
                               height:50,
                               width:300
                               });

button12.addEventListener('click',function(){
                                    alert("SampleViewObj2.funcSaring()::" + SampleViewObj2.funcSaring());
                                    
                                    alert("SampleViewObj2.funcSaringWithReturnTypeId()::" + SampleViewObj2.funcSaringWithReturnTypeId());
                                    
                                    alert("SampleViewObj2.funcNumber()::" + SampleViewObj2.funcNumber());
                                    
                                    alert("SampleViewObj2.funcNumberWithReturnTypeId()::" + SampleViewObj2.funcNumberWithReturnTypeId());
                                    
                                    alert("SampleViewObj2.funcNumberorStringWithReturnTypeId()::" + SampleViewObj2.funcNumberorStringWithReturnTypeId());
                                    
                                    alert("SampleViewObj2.JSONReturn()::" + SampleViewObj2.JSONReturn());
                                    
                                    alert("SampleViewObj2.JSONReturnWithreturnTypeId()::" + SampleViewObj2.JSONReturnWithreturnTypeId());
                            
                                    });


scrollViewer.add(button12);



//Ti.API.info("module exampleProp is => " + testmodule.exampleProp);
//testmodule.exampleProp = "This is a test value";
//
//if (Ti.Platform.name == "android") {
//	var proxy = testmodule.createExample({
//		message: "Creating an example Proxy",
//		backgroundColor: "red",
//		width: 100,
//		height: 100,
//		top: 100,
//		left: 150
//	});
//
//	proxy.printMessage("Hello world!");
//	proxy.message = "Hi world!.  It's me again.";
//	proxy.printMessage("Hello world!");
//	win.add(proxy);
//}


//***************************************************************************************************************

// Setter and Getter Method and their uses for Module development.

/*
var testmodule = require('ti.sample.test');

alert(testmodule);
alert(testmodule.sampleProxy);
alert(testmodule.sampleViewProxy);
Ti.API.info("module is => " + testmodule);

var SampleViewObj1 = testmodule.createSampleView();

alert(SampleViewObj1);  

//scrollViewer.add(SampleViewObj1);

alert(SampleViewObj1.sample);

var SampleViewObj2 = testmodule.createSampleView({
                                                 "sample":"test",
                                                 "test":"view test",
                                                 "sampleTest":"view sample test",
                                                 "testProperty":"testsample",
                                                 "color":"red",
                                                 "width":50,
                                                 "height":50,
                                                 "sampleTest":"view sample test",
                                                 "sample":"view proxy sample"
                                                 });

alert(SampleViewObj2); 

scrollViewer.add(SampleViewObj2);

alert(SampleViewObj2.getTestProperty());

alert(SampleViewObj2.testProperty);

alert(SampleViewObj2.getTest_());

alert(SampleViewObj2.test_);

alert(SampleViewObj2.test);

alert(SampleViewObj2.getTest());

alert(SampleViewObj2.sampleTest);

alert(SampleViewObj2.getSampleTest());

var SampleProxyObj1 = testmodule.createSample({
                                              
                                              "testProperty":"proxy test sample",
                                              "sample":"proxy sample"
                                              
                                              });

alert(SampleProxyObj1);
alert(SampleProxyObj1.testProperty);
alert(SampleProxyObj1.getTestProperty());
alert(SampleProxyObj1.sample);  

*/



//***********************************************************************************************************

//Advanced Concept for module development

/*
// Ensure that the module development guide module is loaded		
var DevGuide = require('ti.sample.test');

// Open the main category selection page
require('navigator').start(DevGuide);*/
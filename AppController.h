/* 
   Project: Afternoon-dict

   Author: KitsuneUwU

   Created: 2024-11-17 22:35:44 -0300 by kitsuneuwu
   
   Application Controller
*/
 
#ifndef _PCAPPPROJ_APPCONTROLLER_H
#define _PCAPPPROJ_APPCONTROLLER_H

#import <AppKit/AppKit.h>
// Uncomment if your application is Renaissance-based
//#import <Renaissance/Renaissance.h>

@interface AppController : NSObject
{
  IBOutlet NSTextField *fNameLabel;
}

+ (void)  initialize;

- (id) init;
- (void) dealloc;

- (void) awakeFromNib;

- (void) applicationDidFinishLaunching: (NSNotification *)aNotif;
- (BOOL) applicationShouldTerminate: (id)sender;
- (void) applicationWillTerminate: (NSNotification *)aNotif;
- (BOOL) application: (NSApplication *)application
	    openFile: (NSString *)fileName;

- (void) showPrefPanel: (id)sender;

- (IBAction) openFile: (id)sender;
- (IBAction) saveFile: (id)sender;
- (IBAction) closeApp: (id)sender;

@end

#endif

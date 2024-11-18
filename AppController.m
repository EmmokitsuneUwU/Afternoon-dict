/* 
   Project: Afternoon-dict

   Author: KitsuneUwU

   Created: 2024-11-17 22:35:44 -0300 by kitsuneuwu
   
   Application Controller
*/

#import "AppController.h"

@implementation AppController

+ (void) initialize
{
  NSMutableDictionary *defaults = [NSMutableDictionary dictionary];

  /*
   * Register your app's defaults here by adding objects to the
   * dictionary, eg
   *
   * [defaults setObject:anObject forKey:keyForThatObject];
   *
   */
  
  [[NSUserDefaults standardUserDefaults] registerDefaults: defaults];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id) init
{
  if ((self = [super init]))
    {
    }
  return self;
}

- (void) dealloc
{
  [super dealloc];
}

- (void) awakeFromNib
{
    [fNameLabel setStringValue:@"Texto desde awakeFromNib"];
}

- (void) applicationDidFinishLaunching: (NSNotification *)aNotif
{
// Uncomment if your application is Renaissance-based
//  [NSBundle loadGSMarkupNamed: @"Main" owner: self];
}

- (BOOL) applicationShouldTerminate: (id)sender
{
  return YES;
}

- (void) applicationWillTerminate: (NSNotification *)aNotif
{
}

- (BOOL) application: (NSApplication *)application
	    openFile: (NSString *)fileName
{
  return NO;
}

- (void) showPrefPanel: (id)sender
{
}

- (IBAction)openFile:(id)sender {
    NSLog(@"Abriendo archivo...");
}

- (IBAction)saveFile:(id)sender {
    NSLog(@"Guardando archivo...");
}

- (IBAction)closeApp:(id)sender {
    NSLog(@"Cerrando la aplicación...");
    [NSApp terminate:self];
}

@end

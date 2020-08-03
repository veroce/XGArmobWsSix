//
//  ViewController.m
//  XGArqmobWsDemo-Objc
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Vero. All rights reserved.
//
#define kDataKey        @"DATA"
#define kTemporal       @"tmp"
#define kImgKey         @"IMG"
#define kDataFile       @"data.plist"
#define kKmlFile        @"file.kml"
#define kKmlFilePList   @"kml.plist"
#define kMBFile         @"tiles.mb"
#define kMBFileInicio   @"tilesInicio.mb"
#define kMBFileFin      @"tilesFin.mb"
#define kElevation      @"elevation.json"
#import "ViewController.h"
@import XGArqmobWs;
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self downloadData];
}

- (void) downloadData {
    ArqmobService *service = [[ArqmobService alloc] init];
    
    [service getRouteDetailWithLanguage:@"es" nid:@"33778" completionClosure:^(RouteDetail * _Nullable value, NSInteger codeStatus) {
        if (codeStatus == 200) {
            // OK
            NSString *dataPath = [[ViewController OfflineDataDirectoryByID:value.codigo] stringByAppendingPathComponent:kDataFile];
           NSMutableData *data = [[NSMutableData alloc] init];
        
           NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
           [archiver encodeObject:value forKey:@"roterio"];
           [archiver finishEncoding];
           [data writeToFile:dataPath atomically:YES];
        } else {
            NSLog(@"Error en la petición");
        }
    }];
    
    [service getOriginWithDenominacion:@"monterrei" language:@"es" completionClosure:^(NSArray<Origin *> * _Nullable items, NSInteger codeStatus) {
        NSLog(items.firstObject.imagenes.firstObject.url);
    }];

}
+(NSString *) OfflineDataDirectoryByID: (NSString *) idCode
   {
       NSString *dataDirectory = [self OfflineDataDirectory];
       
       dataDirectory = [dataDirectory stringByAppendingPathComponent :idCode];
       
       NSFileManager *fm = [[NSFileManager alloc] init];
       
       BOOL isDir = false;
       
       if ((![fm fileExistsAtPath:dataDirectory isDirectory:&isDir]) || !isDir)
       {
           [fm createDirectoryAtPath:dataDirectory withIntermediateDirectories:YES attributes:nil error:nil];
       }
       return dataDirectory;
       
   }
+(NSString *) OfflineDataDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) ;
    
    NSString *dataDirectory = [[paths objectAtIndex:0]copy];// [[NSBundle mainBundle] resourcePath];
    
    dataDirectory = [dataDirectory stringByAppendingPathComponent :kDataKey];
    
    NSFileManager *fm = [[NSFileManager alloc] init];
     
    BOOL isDir = false;
    
    if ((![fm fileExistsAtPath:dataDirectory isDirectory:&isDir]) || !isDir)
    {
        [fm createDirectoryAtPath:dataDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return dataDirectory;
    
}
@end

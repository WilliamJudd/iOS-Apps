//
//  ViewController.m
//  Capture
//
//  Created by William Judd on 1/20/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"
#import "FilterViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>


@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic) UIImagePickerController *cameraPickerController;
@property (nonatomic) UIImagePickerController *libraryPickerController;


@property (weak, nonatomic) IBOutlet UIButton *openPhotoLibraryButton;
@property (weak, nonatomic) IBOutlet UIButton *takeMediaButton;
@property (weak, nonatomic) IBOutlet UIView *cameraView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *mediaChoiceButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pictureModeButton;


@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self.openPhotoLibraryButton addTarget:self action:@selector(openPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
    
    self.cameraPickerController = [[UIImagePickerController alloc] init];
    self.cameraPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.cameraPickerController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    self.cameraPickerController.showsCameraControls = NO;
    self.cameraPickerController.delegate =self;
    self.cameraPickerController.view.frame = self.cameraView.bounds;
    self.cameraPickerController.mediaTypes = @[(NSString *)kUTTypeImage,
                                               (NSString *)kUTTypeMovie
                                               
                                               ];
    
//    self.cameraPickerController.cameraDevice = @[(NSString *) kUT
    
                                                 
                                                // ]

    
    
    
    [self.cameraView addSubview:self.cameraPickerController.view];
    
    [self.takeMediaButton addTarget:self.cameraPickerController action:@selector(takePicture) forControlEvents: UIControlEventTouchUpInside];
    
    
    
    
    
    [self.mediaChoiceButton addTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
    
    [self.pictureModeButton addTarget:self action:@selector(changePictureMode) forControlEvents:UIControlEventValueChanged];
    
//    [UIView transitionWithView:FilterViewController. duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent | UIViewAnimationOptionTransitionFlipFromLeft animations:^{
//        imagePickerController.cameraDevice = UIImagePickerControllerCameraDeviceRear;
//    } completion:NULL];

    
    
    
}


- (void)changeMediaType {
    
    self.cameraPickerController.cameraCaptureMode = (self.mediaChoiceButton.selectedSegmentIndex == 0) ? UIImagePickerControllerCameraCaptureModePhoto : UIImagePickerControllerCameraCaptureModeVideo;

    
    switch (self.mediaChoiceButton.selectedSegmentIndex) {
        case 0:// Photo
            [self.mediaChoiceButton addTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
   
            break;
        case 1://Video
            [self.takeMediaButton removeTarget:self.cameraPickerController action:@selector(takePicture) forControlEvents:UIControlEventTouchUpInside];
   
            break;
        default:
            break;
    }
    

}

-(void)changePictureMode {
    
    self.cameraPickerController.cameraDevice = (self.pictureModeButton.selectedSegmentIndex ==0) ?
    UIImagePickerControllerCameraDeviceFront : UIImagePickerControllerCameraDeviceRear;
    
//    switch (self.pictureModeButton.selectedSegmentIndex) {
//        case 0:// Photo
//            [self.pictureModeButton addTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
//            
//            break;
//        case 1://Video
//            [self.PictureModeButton removeTarget:self.cameraPickerController action:@selector(changePictureMode) forControlEvents:UIControlEventTouchUpInside];
//            
//            break;
//        default:
//            break;
  }

    
    
    


-(void)openPhotoLibrary {
    
    self.libraryPickerController = [[UIImagePickerController alloc] init];
    self.libraryPickerController.delegate = self;
    
    
    [self presentViewController:self.libraryPickerController animated: YES completion:nil];


}


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{

    NSLog(@"%@",info);
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
     [self gotoFilterWithImage:image];
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
       

        
    }];
    
    
}


-(void) gotoFilterWithImage:(UIImage *)image{
    
    //push filter view controller
    
    FilterViewController *filterVC = [self.storyboard instantiateViewControllerWithIdentifier:@"filterVC"];
    
    filterVC.originalImage = image;
    
    [self.navigationController pushViewController:filterVC animated:YES];
    
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

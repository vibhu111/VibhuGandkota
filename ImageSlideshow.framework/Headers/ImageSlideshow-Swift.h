// Generated by Apple Swift version 2.2 (swiftlang-703.0.18.1 clang-703.0.29)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import CoreGraphics;
@import ObjectiveC;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class ImageSlideshow;
@class UIButton;
@protocol InputSource;
@class UIColor;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC14ImageSlideshow33FullScreenSlideshowViewController")
@interface FullScreenSlideshowViewController : UIViewController
@property (nonatomic, strong) ImageSlideshow * _Nonnull slideshow;
@property (nonatomic, strong) UIButton * _Nonnull closeButton;
@property (nonatomic, copy) void (^ _Nullable pageSelected)(NSInteger);
@property (nonatomic) NSInteger initialPage;
@property (nonatomic, copy) NSArray<id <InputSource>> * _Nullable inputs;
@property (nonatomic, strong) UIColor * _Nonnull backgroundColor;
@property (nonatomic) BOOL zoomEnabled;
- (void)viewDidLoad;
- (BOOL)prefersStatusBarHidden;
- (void)viewWillAppear:(BOOL)animated;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIScrollView;
@class UIPageControl;
enum PageControlPosition : NSInteger;
@class ImageSlideshowItem;

SWIFT_CLASS("_TtC14ImageSlideshow14ImageSlideshow")
@interface ImageSlideshow : UIView <UIScrollViewDelegate>
@property (nonatomic, readonly, strong) UIScrollView * _Nonnull scrollView;
@property (nonatomic, readonly, strong) UIPageControl * _Nonnull pageControl;
@property (nonatomic) enum PageControlPosition pageControlPosition;
@property (nonatomic, readonly) NSInteger currentPage;
@property (nonatomic, readonly, strong) ImageSlideshowItem * _Nullable currentSlideshowItem;
@property (nonatomic, readonly) NSInteger scrollViewPage;
@property (nonatomic) BOOL circular;
@property (nonatomic) BOOL draggingEnabled;
@property (nonatomic) BOOL zoomEnabled;
@property (nonatomic) double slideshowInterval;
@property (nonatomic) UIViewContentMode contentScaleMode;
@property (nonatomic, readonly, copy) NSArray<id <InputSource>> * _Nonnull images;
@property (nonatomic, readonly, copy) NSArray<ImageSlideshowItem *> * _Nonnull slideshowItems;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (void)setImageInputs:(NSArray<id <InputSource>> * _Nonnull)inputs;
- (void)setCurrentPage:(NSInteger)currentPage animated:(BOOL)animated;
- (void)setScrollViewPage:(NSInteger)scrollViewPage animated:(BOOL)animated;
- (void)setCurrentPageForScrollViewPage:(NSInteger)page;
- (void)scrollViewWillBeginDragging:(UIScrollView * _Nonnull)scrollView;
- (void)scrollViewDidEndDecelerating:(UIScrollView * _Nonnull)scrollView;
- (void)scrollViewDidScroll:(UIScrollView * _Nonnull)scrollView;
@end

@class UIImageView;
@class UITapGestureRecognizer;

SWIFT_CLASS("_TtC14ImageSlideshow18ImageSlideshowItem")
@interface ImageSlideshowItem : UIScrollView <UIScrollViewDelegate>
@property (nonatomic, readonly, strong) UIImageView * _Nonnull imageView;
@property (nonatomic, readonly, strong) id <InputSource> _Nonnull image;
@property (nonatomic, strong) UITapGestureRecognizer * _Nullable gestureRecognizer;
@property (nonatomic, readonly) BOOL zoomEnabled;
@property (nonatomic) BOOL zoomInInitially;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (void)scrollViewDidZoom:(UIScrollView * _Nonnull)scrollView;
- (UIView * _Nullable)viewForZoomingInScrollView:(UIScrollView * _Nonnull)scrollView;
@end


SWIFT_PROTOCOL("_TtP14ImageSlideshow11InputSource_")
@protocol InputSource
- (void)setToImageView:(UIImageView * _Nonnull)imageView;
@end

@class UIImage;

SWIFT_CLASS("_TtC14ImageSlideshow11ImageSource")
@interface ImageSource : NSObject <InputSource>
- (nonnull instancetype)initWithImage:(UIImage * _Nonnull)image OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithImageString:(NSString * _Nonnull)imageString OBJC_DESIGNATED_INITIALIZER;
- (void)setToImageView:(UIImageView * _Nonnull)imageView;
@end


typedef SWIFT_ENUM(NSInteger, PageControlPosition) {
  PageControlPositionHidden = 0,
  PageControlPositionInsideScrollView = 1,
  PageControlPositionUnderScrollView = 2,
};


@interface UIImage (SWIFT_EXTENSION(ImageSlideshow))
@end

@protocol UIViewControllerAnimatedTransitioning;

SWIFT_CLASS("_TtC14ImageSlideshow33ZoomAnimatedTransitioningDelegate")
@interface ZoomAnimatedTransitioningDelegate : NSObject <UIViewControllerTransitioningDelegate>
- (nonnull instancetype)initWithSlideshowView:(ImageSlideshow * _Nonnull)slideshowView OBJC_DESIGNATED_INITIALIZER;
- (id <UIViewControllerAnimatedTransitioning> _Nullable)animationControllerForPresentedController:(UIViewController * _Nonnull)presented presentingController:(UIViewController * _Nonnull)presenting sourceController:(UIViewController * _Nonnull)source;
- (id <UIViewControllerAnimatedTransitioning> _Nullable)animationControllerForDismissedController:(UIViewController * _Nonnull)dismissed;
@end

#pragma clang diagnostic pop

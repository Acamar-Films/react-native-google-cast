#import <GoogleCast/GoogleCast.h>
#import "RNGoogleCastButton.h"

@implementation RNGoogleCastButton
{
  GCKUICastButton *_castButton;
  UIColor *_tintColor;
}

-(void)layoutSubviews {
  _castButton = [[GCKUICastButton alloc] initWithFrame:self.bounds];
  _castButton.tintColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0];
    
  UIImage *activeIcon = [UIImage imageNamed:@"cast-active"];
  UIImage *inactiveIcon = [UIImage imageNamed:@"cast-inactive"];
  NSArray *animatedIcons = @[[UIImage imageNamed:@"cast-connecting0"], [UIImage imageNamed:@"cast-connecting1"], [UIImage imageNamed:@"cast-connecting2"]];
  
  [_castButton setInactiveIcon:inactiveIcon activeIcon:activeIcon animationIcons:animatedIcons];
    
  [self addSubview:_castButton];
}

-(void)setTintColor:(UIColor *)color {
  _tintColor = color;
  super.tintColor = color;
  [self setNeedsDisplay];
}

@end

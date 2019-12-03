%hook UINavigationBar
-(id)initWithCoder:(id)arg1 {
	UINavigationBar *bar = %orig;
    if ([bar shadowImage] == nil) {
        bar.shadowImage = [[UIImage alloc] init];
    }
    return bar;
}
-(id)initWithFrame:(CGRect)arg1 {
	UINavigationBar *bar = %orig;
    if ([bar shadowImage] == nil) {
        bar.shadowImage = [[UIImage alloc] init];
    }
    return bar;
}

%end

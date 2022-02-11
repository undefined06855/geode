class cocos2d::CCActionTween {
	static cocos2d::CCActionTween* create(float, char const*, float, float) = mac 0x447590;
}

class cocos2d::CCAnimate {
	static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = mac 0x1f8fc0;
}

class cocos2d::CCAnimation {
	static auto createWithSpriteFrames(cocos2d::CCArray*, float) = mac 0x140df0;
}

class cocos2d::CCApplication {
	virtual auto getCurrentLanguage() = mac 0x1a3f40, ios 0x10e508;
	virtual auto getTargetPlatform() = mac 0x1a3f20, ios 0x10e57c;
	virtual auto openURL(char const*) = mac 0x1a4550, ios 0x10e7a4;
	virtual auto setAnimationInterval(double) = mac 0x1a3ee0, ios 0x10e494;
	~CCApplication() = mac 0x1a3d10;
}

class cocos2d::CCArray {
	auto addObject(cocos2d::CCObject*) = mac 0x419f90, ios 0x16504c;
	auto addObjectNew(cocos2d::CCObject*) = mac 0x41a450;
	auto addObjectsFromArray(cocos2d::CCArray*) = mac 0x41a2d0;
	auto containsObject(cocos2d::CCObject*) const = mac 0x41a3e0;
	auto count() const = mac 0x41a2f0, ios 0x1650e8;
	static cocos2d::CCArray* create() = mac 0x419cb0, ios 0x164ec8;
	static auto createWithObject(cocos2d::CCObject*) = mac 0x419d50;
	auto fastRemoveObject(cocos2d::CCObject*) = mac 0x41a520;
	auto fastRemoveObjectAtIndex(unsigned int) = mac 0x41a500;
	auto fastRemoveObjectAtIndexNew(unsigned int) = mac 0x41a510;
	auto lastObject() = mac 0x41a360;
	auto objectAtIndex(unsigned int) = mac 0x41a340;
	auto removeAllObjects() = mac 0x41a4f0, ios 0x1651f0;
	auto removeLastObject(bool) = mac 0x41a470;
	auto removeObject(cocos2d::CCObject*, bool) = mac 0x41a490;
	auto removeObjectAtIndex(unsigned int, bool) = mac 0x41a4b0;
	auto stringAtIndex(unsigned int) = mac 0x41a320;
}

class cocos2d::CCBezierTo {
	static cocos2d::CCBezierTo* create(float, cocos2d::_ccBezierConfig const&) = mac 0x1f6c10;
}

class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(int) = mac 0x454d90;
}

class cocos2d::CCClippingNode {
	static cocos2d::CCClippingNode* create() = mac 0x4192a0;
	static cocos2d::CCClippingNode* create(cocos2d::CCNode*) = mac 0x419330;
	auto getAlphaThreshold() const = mac 0x419a10;
	auto getStencil() const = mac 0x4199c0;
	auto isInverted() const = mac 0x419a30;
	auto onEnter() = mac 0x419470;
	auto onEnterTransitionDidFinish() = mac 0x4194a0;
	auto onExit() = mac 0x419500;
	auto onExitTransitionDidStart() = mac 0x4194d0;
	auto setAlphaThreshold(float) = mac 0x419a20;
	auto setInverted(bool) = mac 0x419a40;
	auto setStencil(cocos2d::CCNode*) = mac 0x4199d0;
	auto visit() = mac 0x419530;
}

class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = mac 0x1f4380;
}

class cocos2d::CCDictionary {
	auto allKeys() = mac 0x190450, ios 0x2de774;
	auto count() = mac 0x190430;
	static cocos2d::CCDictionary* create() = mac 0x192650;
	auto objectForKey(intptr_t) = mac 0x190bb0, ios 0x2decc0;
	auto objectForKey(gd::string const&) = mac 0x190870, ios 0x2de988;
	auto removeAllObjects() = mac 0x190220;
	auto removeObjectForKey(intptr_t) = mac 0x1921d0;
	auto setObject(cocos2d::CCObject*, intptr_t) = mac 0x191790, ios 0x2df734;
	auto setObject(cocos2d::CCObject*, gd::string const&) = mac 0x190dc0, ios 0x2dee7c;
	auto valueForKey(intptr_t) = mac 0x190cf0;
	auto valueForKey(gd::string const&) = mac 0x1907a0;
}

class cocos2d::CCDirector {
	virtual ~CCDirector() = mac 0x2493a0;
	virtual auto init() = mac 0x248df0;
	virtual auto getScheduler() = mac 0x24af00;
	virtual auto setScheduler(cocos2d::CCScheduler*) = mac 0x24aec0;
	virtual auto getActionManager() = mac 0x24af50;
	virtual auto setActionManager(cocos2d::CCActionManager*) = mac 0x24af10;
	virtual auto getTouchDispatcher() = mac 0x24afa0;
	virtual auto setTouchDispatcher(cocos2d::CCTouchDispatcher*) = mac 0x24af60;
	virtual auto getKeypadDispatcher() = mac 0x24b090;
	virtual auto setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = mac 0x24b050;
	virtual auto getKeyboardDispatcher() = mac 0x24aff0;
	virtual auto setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = mac 0x24afb0;
	virtual auto getMouseDispatcher() = mac 0x24b040;
	virtual auto setMouseDispatcher(cocos2d::CCMouseDispatcher*) = mac 0x24b000;
	virtual auto getAccelerometer() = mac 0x24b0e0;
	virtual auto setAccelerometer(cocos2d::CCAccelerometer*) = mac 0x24b0a0;
	virtual auto getDeltaTime() = mac 0x249bd0;
	virtual auto getSceneDelegate() = mac 0x24b320;
	virtual auto setSceneDelegate(cocos2d::CCSceneDelegate*) = mac 0x24b330;


	auto getWinSize() = mac 0x24a0f0, ios 0xece34;
	auto pushScene(cocos2d::CCScene*) = mac 0x24a620;
	auto replaceScene(cocos2d::CCScene*) = mac 0x24a6d0, ios 0xed08c;
	auto resetSmoothFixCounter() = mac 0x249bc0;
	static auto sharedDirector() = mac 0x248cb0, ios 0xebf84;
	auto calculateDeltaTime() = mac 0x2497a0;
	auto calculateMPF() = mac 0x19eac0;
	auto convertToGL(cocos2d::CCPoint const&) = mac 0x24a210;
	auto drawScene() = mac 0x249690;

	auto setNextScene() = mac 0x2498d0;
	auto showStats() = mac 0x2499e0;
	auto updateContentScale(cocos2d::TextureQuality) = mac 0x249ff0;
	auto popSceneWithTransition(float, cocos2d::PopTransition) = mac 0x24a8b0;
}

class cocos2d::CCDrawNode {
	auto clear() = mac 0x379e80;
	static cocos2d::CCDrawNode* create() = mac 0x378d00;
	auto drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = mac 0x3797f0;
	auto drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = mac 0x3792d0;
	auto getBlendFunc() const = mac 0x379ea0;
	auto init() = mac 0x378e00;
	auto setBlendFunc(cocos2d::_ccBlendFunc const&) = mac 0x379eb0;
	auto draw() = mac 0x379020;
	virtual ~CCDrawNode() = mac 0x378cc0;
}

class cocos2d::CCEaseElasticOut {
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = mac 0x2a3080;
}

class cocos2d::CCEaseIn {
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = mac 0x2a1960;
}

class cocos2d::CCEaseInOut {
	static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = mac 0x2a1d80;
}

class cocos2d::CCEaseOut {
	static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = mac 0x2a1b70;
}

class cocos2d::CCEGLView {
	void onGLFWMouseCallBack(GLFWwindow* wnd, int btn, int pressed, int z);
	virtual void swapBuffers();
	void updateWindow(int width, int height);
	void toggleFullScreen(bool fullscreen);
	void pollEvents();
}

class cocos2d::CCFadeOut {
	static cocos2d::CCFadeOut* create(float) = mac 0x1f7d80;
}

class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = mac 0x1f7ff0;
}

class cocos2d::CCFileUtils : cocos2d::TypeInfo {
	static cocos2d::CCFileUtils* sharedFileUtils() = mac 0x377030, ios 0x159450;
}

class cocos2d::CCHide {
	static cocos2d::CCHide* create() = mac 0x4543e0;
}

class cocos2d::CCIMEDelegate {
	virtual ~CCIMEDelegate() = mac 0x277500;
	virtual auto attachWithIME() = mac 0x2776a0;
	virtual auto detachWithIME() = mac 0x277880;
	CCIMEDelegate() = mac 0x277310;
}

class cocos2d::CCImage {
	CCImage() = mac 0x24fa00;
	virtual ~CCImage() = mac 0x24fa80;
	auto initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int) = mac 0x24fcb0;
}

class cocos2d::CCKeyboardDispatcher {
	auto dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool) = mac 0xe8190;
	auto keyToString(cocos2d::enumKeyCodes) = mac 0xe8450;
}

class cocos2d::CCKeyboardHandler {
    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = mac 0x242030;
    virtual auto initWithDelegate(cocos2d::CCKeyboardDelegate*) = mac 0x241ff0, , ios 0x13f8b8;
    ~CCKeyboardHandler() = mac 0x241e90, , ios 0x13f87c;
}

class cocos2d::CCKeypadHandler {
    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = mac 0x1ff2d0;
    virtual auto initWithDelegate(cocos2d::CCKeypadDelegate*) = mac 0x1ff290, , ios 0x69; // iOS stub
    virtual ~CCKeypadHandler() = mac 0x1ff130, , ios 0x2c530;
    cocos2d::CCKeypadDelegate* getDelegate() = mac 0x1ff0b0;
}


class cocos2d::CCLabelBMFont {
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = mac 0x347660;
	auto limitLabelWidth(float, float, float) = mac 0x34a6e0, ios 0x21b740;
	auto setScale(float) = mac 0x34a5d0;
	auto setString(char const*, bool) = mac 0x3489e0;
	auto setAnchorPoint(cocos2d::CCPoint const&) = mac 0x349440;
}

class cocos2d::CCLabelTTF {
	auto updateTexture() = mac 0x1fadc0;
	virtual auto setString(char const*) = mac 0x1fad70;
}

class cocos2d::CCLayer {
    CCLayer() = mac 0x2725b0, ios 0xc7708;
    virtual auto ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2734d0, , ios 0xc810c;
    virtual auto ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x273650, , ios 0xc82ac;
    virtual auto ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2735d0, , ios 0xc820c;
    virtual auto ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x273550, , ios 0xc816c;
    virtual auto ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x2736d0, , ios 0xc834c;
    virtual auto ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x273850, , ios 0xc852c;
    virtual auto ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x2737d0, , ios 0xc848c;
    virtual auto ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x273750, , ios 0xc83ec;
    static cocos2d::CCLayer* create() = mac 0x272a00;
    virtual auto didAccelerate(cocos2d::CCAcceleration*) = mac 0x272ea0, , ios 0xc7c5c;
    virtual auto getTouchMode() = mac 0x272e10, , ios 0xc7b9c;
    virtual auto getTouchPriority() = mac 0x272e00, , ios 0xc7b94;
    virtual auto init() = mac 0x2729a0, , ios 0xc7894;
    virtual auto isAccelerometerEnabled() = mac 0x272e20, , ios 0xc7ba4;
    virtual auto isKeyboardEnabled() = mac 0x273010, , ios 0xc7d70;
    virtual auto isKeypadEnabled() = mac 0x272f70, , ios 0xc7cf4;
    virtual auto isMouseEnabled() = mac 0x273090, , ios 0xc7de0;
    virtual auto isTouchEnabled() = mac 0x272ce0, , ios 0xc7a54;
    virtual auto keyBackClicked() = mac 0x273160, , ios 0xc7e50;
    virtual auto keyDown(cocos2d::enumKeyCodes) = mac 0x273280, , ios 0xc7efc;
    virtual auto keyMenuClicked() = mac 0x273200, , ios 0xc7eac;
    virtual auto onEnter() = mac 0x273300, , ios 0xc7f38;
    virtual auto onEnterTransitionDidFinish() = mac 0x273490, , ios 0xc80cc;
    virtual auto onExit() = mac 0x2733c0, , ios 0xc8004;
    virtual auto registerScriptTouchHandler(int, bool, int, bool) = mac 0x272bd0, , ios 0xc79c8;
    virtual auto registerWithTouchDispatcher() = mac 0x272b40, , ios 0xc7958;
    virtual auto setAccelerometerEnabled(bool) = mac 0x272e30, , ios 0xc7bac;
    virtual auto setAccelerometerInterval(double) = mac 0x272e70, , ios 0xc7c10;
    virtual auto setKeyboardEnabled(bool) = mac 0x273020, , ios 0xc7d78;
    virtual auto setKeypadEnabled(bool) = mac 0x272f80, , ios 0xc7cfc;
    virtual auto setMouseEnabled(bool) = mac 0x2730a0, , ios 0xc7de8;
    virtual auto setTouchEnabled(bool) = mac 0x272cf0, , ios 0xc7a5c;
    virtual auto setTouchMode(cocos2d::ccTouchesMode) = mac 0x272d60, , ios 0xc7acc;
    virtual auto setTouchPriority(int) = mac 0x272db0, , ios 0xc7b30;
    virtual auto unregisterScriptTouchHandler() = mac 0x272c30, , ios 0xc7a28;
    ~CCLayer() = mac 0x2727b0, , ios 0xc7848;
}

class cocos2d::CCLayerColor {
    CCLayerColor() = mac 0x274320, ios 0xc8aec;
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = mac 0x2745e0;
    auto draw() = mac 0x274b50, , ios 0xc8fe0;
    auto getBlendFunc() = mac 0x274480, , ios 0xc8bcc;
    auto init() = mac 0x274800, , ios 0xc8de8;
    auto initWithColor(cocos2d::_ccColor4B const&) = mac 0x2749a0, , ios 0xc8f14;
    auto initWithColor(cocos2d::_ccColor4B const&, float, float) = mac 0x274850, , ios 0xc8e34;
    auto setBlendFunc(cocos2d::_ccBlendFunc) = mac 0x2744a0, , ios 0xc8bdc;
    auto setColor(cocos2d::_ccColor3B const&) = mac 0x274c20, , ios 0xc90ac;
    auto setContentSize(cocos2d::CCSize const&) = mac 0x2749f0, , ios 0xc8f64;
    auto setOpacity(unsigned char) = mac 0x274db0, , ios 0xc9108;
    auto updateColor() = mac 0x274ae0, , ios 0xc8f80;
    ~CCLayerColor() = mac 0x2743d0, , ios 0x2743e0;
}

class cocos2d::CCLayerRGBA {
    CCLayerRGBA() = mac 0x2738d0, ios 0xc85cc;
    virtual auto init() = mac 0x273b40, , ios 0xc8de8;
    virtual auto getOpacity() = mac 0x273be0, , ios 0xc8698;
    virtual auto getDisplayedOpacity() = mac 0x273c00, , ios 0xc8724;
    virtual auto setOpacity(unsigned char) = mac 0x273c20, , ios 0xc8734;
    virtual auto updateDisplayedOpacity(unsigned char) = mac 0x273f20, , ios 0xc88d8;
    virtual auto isCascadeOpacityEnabled() = mac 0x2741f0, , ios 0xc8aac;
    virtual auto setCascadeOpacityEnabled(bool) = mac 0x274210, , ios 0xc8abc;
    virtual auto getColor() = mac 0x273d60, , ios 0xc87d8;
    virtual auto getDisplayedColor() = mac 0x273d80, , ios 0xc87e8;
    virtual auto setColor(cocos2d::_ccColor3B const&) = mac 0x273da0, , ios 0xc87f8;
    virtual auto updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x2740b0, , ios 0xc89a4;
    virtual auto isCascadeColorEnabled() = mac 0x274230, , ios 0xc8acc;
    virtual auto setCascadeColorEnabled(bool) = mac 0x274250, , ios 0xc8adc;
    // virtual auto setOpacityModifyRGB(bool) = mac 0x6180, , ios 0x68e8;
    // virtual auto isOpacityModifyRGB() = mac 0x6190, , ios 0x68ec;
    virtual ~CCLayerRGBA() = mac 0x273aa0, , ios 0xc77b0;
}

class cocos2d::CCMenu {
	auto alignItemsHorizontallyWithPadding(float) = mac 0x4393e0, ios 0x132508;
	auto alignItemsVerticallyWithPadding(float) = mac 0x439190;
	static cocos2d::CCMenu* create() = mac 0x438720, ios 0x131ba4;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = mac 0x4387e0;
	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = mac 0x438b80;

	virtual auto ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x438d20, ios 0x131fe8;
	virtual auto ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4390b0, ios 0x1322ac;
    virtual auto ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x438fd0, ios 0x1321bc;
    virtual auto ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x439050, ios 0x132244;
    virtual auto init() = mac 0x438b90, ios 0x131ec0;
    virtual auto registerWithTouchDispatcher() = mac 0x438cd0, ios 0x131f8c;
    virtual auto onExit() = mac 0x438bd0, ios 0x131ed4;
    virtual auto removeChild(cocos2d::CCNode*, bool) = mac 0x438c20, ios 0x15e630;
    auto initWithArray(cocos2d::CCArray*) = mac 0x4389f0, ios 0x131d04;
}

class cocos2d::CCMenuItem {
	virtual ~CCMenuItem() = mac 0x1fb8e0, ios 0x2cdf4;
	virtual auto activate() = mac 0x1fba70, ios 0x2ceb0;
	virtual auto selected() = mac 0x1fb9e0, ios 0x2ce2e;
	virtual auto unselected() = mac 0x1fb9f0, ios 0x2ce38;
	virtual auto registerScriptTapHandler(int) = mac 0x1fba00, ios 0x2ce40;
	virtual auto unregisterScriptTapHandler() = mac 0x1fba30, ios 0x2ce70;
	virtual auto isEnabled() = mac 0x1fbaf0, ios 0x2cf34;
	virtual auto setEnabled(bool) = mac 0x1fbae0, ios 0x2cf2c;
	virtual auto isSelected() = mac 0x1fbb50, ios 0x2cf60;
	auto rect() = mac 0x1fbb00, ios 0x2cf3c;
}

class cocos2d::CCMenuItemImage {
	// virtual ~CCMenuItemImage() = mac 0x1febb0;
	virtual auto init() = mac 0x1fd750;
}

class cocos2d::CCMenuItemLabel {
	virtual ~CCMenuItemLabel() = mac 0x1fc0d0;
	virtual auto activate() = mac 0x1fc240;
	virtual auto selected() = mac 0x1fc2e0;
	virtual auto unselected() = mac 0x1fc380;
	virtual auto setEnabled(bool) = mac 0x1fc3f0;
	virtual auto getDisabledColor() = mac 0x1fbb80;
	virtual auto setDisabledColor(cocos2d::_ccColor3B const&) = mac 0x1fbb90;
	virtual auto getLabel() = mac 0x1fbbb0;
	virtual auto setLabel(cocos2d::CCNode*) = mac 0x1fbbc0;
}

class cocos2d::CCMenuItemSprite {
	// virtual ~CCMenuItemSprite() = mac 0x1feab0;
	virtual auto selected() = mac 0x1fd3f0, ios 0x02d2cc;
	virtual auto unselected() = mac 0x1fd470, ios 0x2d34c;
	virtual auto setEnabled(bool) = mac 0x1fd4e0, ios 0x2d3bc;
	virtual auto getNormalImage() = mac 0x1fcee0, ios 0x2cf68;
	virtual auto setNormalImage(cocos2d::CCNode*) = mac 0x1fcef0, ios 0x2cf70;
	virtual auto getSelectedImage() = mac 0x1fcfc0, ios 0x2d044;
	virtual auto setSelectedImage(cocos2d::CCNode*) = mac 0x1fcfd0, ios 0x2d04;
	virtual auto getDisabledImage() = mac 0x1fd070, ios 0x2d0fc;
	virtual auto setDisabledImage(cocos2d::CCNode*) = mac 0x1fd080, ios 0x2d104;
	virtual auto updateImagesVisibility() = mac 0x1fd510, ios 0x2d3dc;

	static auto create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = mac 0x1fd120;
	static auto create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x1fd140;
	static auto create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x1fd2d0;
}

class cocos2d::CCMotionStreak {
	auto reset() = mac 0x2ee190;
	auto resumeStroke() = mac 0x2edb30;
	auto stopStroke() = mac 0x2edb20;
}

class cocos2d::CCMouseHandler {
    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = mac 0x12ef80;
    virtual auto initWithDelegate(cocos2d::CCMouseDelegate*) = mac 0x12ef40, , ios 0x43798;
    ~CCMouseHandler() = mac 0x12ede0, , ios 0x4375c;
}

class cocos2d::CCMoveBy {
	static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = mac 0x1f50e0;
}

class cocos2d::CCMoveTo {
	static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = mac 0x1f54d0;
}

class cocos2d::CCNode {
    CCNode() = mac 0x122550;
    auto _setZOrder(int) = mac 0x122990, , ios 0x15dd7c;
    auto addChild(cocos2d::CCNode*) = mac 0x1233d0, , ios 0x15e5d4;
    auto addChild(cocos2d::CCNode*, int) = mac 0x1233b0, , ios 0x15e5c4;
    auto addChild(cocos2d::CCNode*, int, int) = mac 0x1232a0, , ios 0x15e4e4;
    auto addComponent(cocos2d::CCComponent*) = mac 0x124a40, , ios 0x15f6a4;
    auto cleanup() = mac 0x123100, , ios 0x15e3a4;
    auto convertToNodeSpace(cocos2d::CCPoint const&) = mac 0x124750, ios 0x15f55c;
    auto convertToWorldSpace(cocos2d::CCPoint const&) = mac 0x124790;
    static cocos2d::CCNode* create() = mac 0x1230a0;
    auto draw() = mac 0x123840, , ios 0x15e974;
    auto getActionByTag(int) = mac 0x123ee0;
    auto getActionManager() = mac 0x123e50, , ios 0x15ef54;
    auto getAnchorPoint() = mac 0x122d80, , ios 0x15e090;
    auto getAnchorPointInPoints() = mac 0x122d70, , ios 0x15e088;
    auto getCamera() = mac 0x122cb0, , ios 0x15dfe4;
    auto getChildByTag(int) = mac 0x123220, , ios 0x15e460;
    auto getChildren() = mac 0x122c80, , ios 0x15dfcc;
    auto getChildrenCount() const = mac 0x122c90, , ios 0x15dfd4;
    auto getContentSize() const = mac 0x122e00, , ios 0x15e118;
    auto getGLServerState() = mac 0x122f90, , ios 0x15e248;
    auto getGrid() = mac 0x122d00, , ios 0x15e034;
    auto getOrderOfArrival() = mac 0x122f50, , ios 0x15e228;
    auto getParent() = mac 0x122ed0, , ios 0x15e1e0;
    auto getPosition() = mac 0x122b60, , ios 0x15debc;
    auto getPosition(float*, float*) = mac 0x122b90, , ios 0x15dedc;
    auto getPositionX() = mac 0x122be0, , ios 0x15df30;
    auto getPositionY() = mac 0x122bf0, , ios 0x15df38;
    auto getRotation() = mac 0x122a00, , ios 0x15dde4;
    auto getRotationX() = mac 0x122a50, , ios 0x15de1c;
    auto getRotationY() = mac 0x122a80, , ios 0x15de38;
    auto getScale() = mac 0x122ab0, , ios 0x15de54;
    auto getScaleX() = mac 0x122b00, , ios 0x15de84;
    auto getScaleY() = mac 0x122b30, , ios 0x15dea0;
    auto getScaledContentSize() = mac 0x122e10, , ios 0x15e120;
    auto getScheduler() = mac 0x123f70, , ios 0x15f008;
    auto getShaderProgram() = mac 0x122f70, , ios 0x15e238;
    auto getSkewX() = mac 0x122920, , ios 0x15dd3c;
    auto getSkewY() = mac 0x122950, , ios 0x15dd58;
    auto getUserData() = mac 0x122f30, , ios 0x15e218;
    auto getUserObject() = mac 0x122f80, , ios 0x15e240;
    auto getVertexZ() = mac 0x1229e0, , ios 0x15ddd4;
    auto getZOrder() = mac 0x122980, , ios 0x15dd74;
    auto ignoreAnchorPointForPosition(bool) = mac 0x122f00, , ios 0x15e1f8;
    auto init() = mac 0x122910, , ios 0x15dd34;
    auto isIgnoreAnchorPointForPosition() = mac 0x122ef0, , ios 0x15e1f0;
    auto isRunning() = mac 0x122ec0, , ios 0x15e1d8;
    auto isVisible() = mac 0x122d50, , ios 0x15e078;
    auto nodeToParentTransform() = mac 0x124210, , ios 0x15f1a4;
    auto nodeToWorldTransform() = mac 0x124670, , ios 0x15f490;
    auto onEnter() = mac 0x123a90, , ios 0x15eb94;
    auto onEnterTransitionDidFinish() = mac 0x123b90, , ios 0x15ec94;
    auto onExit() = mac 0x123ca0, , ios 0x15edb0;
    auto onExitTransitionDidStart() = mac 0x123c00, , ios 0x15ed18;
    auto parentToNodeTransform() = mac 0x1245d0, , ios 0x15f410;
    auto pauseSchedulerAndActions() = mac 0x123d60;
    auto registerScriptHandler(int) = mac 0x123d90, , ios 0x15ee94;
    auto removeAllChildren() = mac 0x123600, , ios 0x15e788;
    auto removeAllChildrenWithCleanup(bool) = mac 0x123620, , ios 0x15e798;
    auto removeAllComponents() = mac 0x124aa0, , ios 0x15f6d4;
    auto removeChild(cocos2d::CCNode*) = mac 0x123460, , ios 0x15e630;
    auto removeChild(cocos2d::CCNode*, bool) = mac 0x123480, , ios 0x15e640;
    auto removeChildByTag(int) = mac 0x1235a0, , ios 0x15e724;
    auto removeChildByTag(int, bool) = mac 0x1235c0, , ios 0x15e734;
    auto removeComponent(char const*) = mac 0x124a60, , ios 0x15f6b4;
    auto removeComponent(cocos2d::CCComponent*) = mac 0x124a80, , ios 0x15f6c4;
    auto removeFromParent() = mac 0x1233f0, , ios 0x15e5e8;
    auto removeFromParentAndCleanup(bool) = mac 0x123410, , ios 0x15e5f8;
    auto removeMeAndCleanup() = mac 0x123440, , ios 0x15e620;
    auto reorderChild(cocos2d::CCNode*, int) = mac 0x123760, , ios 0x15e87c;
    auto resumeSchedulerAndActions() = mac 0x123b60;
    auto runAction(cocos2d::CCAction*) = mac 0x123e60;
    auto schedule(cocos2d::SEL_SCHEDULE) = mac 0x1240b0;
    auto schedule(cocos2d::SEL_SCHEDULE, float) = mac 0x124120;
    auto scheduleUpdate() = mac 0x123f80;
    auto setActionManager(cocos2d::CCActionManager*) = mac 0x123e00, , ios 0x15ef04;
    auto setAnchorPoint(cocos2d::CCPoint const&) = mac 0x122d90, , ios 0x15e098;
    auto setContentSize(cocos2d::CCSize const&) = mac 0x122e50, , ios 0x15e158;
    auto setGLServerState(cocos2d::ccGLServerState) = mac 0x122fa0, , ios 0x15e250;
    auto setGrid(cocos2d::CCGridBase*) = mac 0x122d10, , ios 0x15e03c;
    auto setOrderOfArrival(unsigned int) = mac 0x122f60, , ios 0x15e230;
    auto setParent(cocos2d::CCNode*) = mac 0x122ee0, , ios 0x15e1e8;
    auto setPosition(cocos2d::CCPoint const&) = mac 0x122b70, , ios 0x15dec4;
    auto setPosition(float, float) = mac 0x122ba0, , ios 0x15def0;
    auto setPositionX(float) = mac 0x122c00, , ios 0x15df40;
    auto setPositionY(float) = mac 0x122c40, , ios 0x15df84;
    auto setRotation(float) = mac 0x122a10, , ios 0x15ddec;
    auto setRotationX(float) = mac 0x122a60, , ios 0x15de24;
    auto setRotationY(float) = mac 0x122a90, , ios 0x15de40;
    auto setScale(float) = mac 0x122ac0, , ios 0x15de5c;
    auto setScale(float, float) = mac 0x122ae0, , ios 0x15de70;
    auto setScaleX(float) = mac 0x122b10, , ios 0x15de8c;
    auto setScaleY(float) = mac 0x122b40, , ios 0x15dea8;
    auto setScheduler(cocos2d::CCScheduler*) = mac 0x123f20, , ios 0x15efb8;
    auto setShaderProgram(cocos2d::CCGLProgram*) = mac 0x122ff0, , ios 0x15e294;
    auto setSkewX(float) = mac 0x122930, , ios 0x15dd44;
    auto setSkewY(float) = mac 0x122960, , ios 0x15dd60;
    auto setUserData(void*) = mac 0x122f40, , ios 0x15e220;
    auto setUserObject(cocos2d::CCObject*) = mac 0x122fb0, , ios 0x15e258;
    auto setVertexZ(float) = mac 0x1229f0, , ios 0x15dddc;
    auto setVisible(bool) = mac 0x122d60, , ios 0x15e080;
    auto setZOrder(int) = mac 0x1229a0, , ios 0x15dd84;
    auto sortAllChildren() = mac 0x1237b0, , ios 0x15e8d4;
    auto stopActionByTag(int) = mac 0x123ec0;
    auto stopAllActions() = mac 0x123190;
    auto unregisterScriptHandler() = mac 0x123dc0, , ios 0x15eec4;
    auto unschedule(cocos2d::SEL_SCHEDULE) = mac 0x124180;
    auto unscheduleAllSelectors() = mac 0x1231b0;
    auto unscheduleUpdate() = mac 0x124060;
    auto update(float) = mac 0x1241a0, , ios 0x15f124;
    auto updateTransform() = mac 0x1249d0, , ios 0x15f648;
    auto updateTweenAction(float, char const*) = mac 0x1249c0, , ios 0x15f644;
    auto visit() = mac 0x123850, , ios 0x15e978;
    auto worldToNodeTransform() = mac 0x124710, , ios 0x15f51c;
    ~CCNode() = mac 0x122750, , ios 0x6c98;
}

class cocos2d::CCNodeRGBA {
	CCNodeRGBA() = mac 0x124b30;
	virtual ~CCNodeRGBA() = mac 0x124bb0;
	virtual auto init() = mac 0x124bf0, ios 0x15f780;
	virtual auto getOpacity() = mac 0x124cd0, ios 0x15f7b8;
	virtual auto getDisplayedOpacity() = mac 0x124cf0, ios 0x15f7c8;
	virtual auto setOpacity(GLubyte) = mac 0x124d10, ios 0x15f7d8;
	virtual auto updateDisplayedOpacity(GLubyte) = mac 0x124e50, ios 0x15f87c;
	virtual auto isCascadeOpacityEnabled() = mac 0x124fe0, ios 0x15f948;
	virtual auto setCascadeOpacityEnabled(bool) = mac 0x125000, ios 0x15f958;
	virtual auto getColor() = mac 0x125020, ios 0x15f968;
	virtual auto getDisplayedColor() = mac 0x125040, ios 0x15f978;
	virtual auto setColor(cocos2d::_ccColor3B const&) = mac 0x125060, ios 0x15f9888;
	virtual auto updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x1251e0, ios 0x15fa68;
	virtual auto isCascadeColorEnabled() = mac 0x125320, ios 0x15fb70;
	virtual auto setCascadeColorEnabled(bool) = mac 0x125340, ios 0x15fb80;
}

class cocos2d::CCObject {
    CCObject() = mac 0x250ca0, ios 0x43864;
    auto acceptVisitor(cocos2d::CCDataVisitor&) = mac 0x250f30, , ios 0x439f0;
    auto autorelease() = mac 0x250ed0, ios 0x439b8;
    auto canEncode() = mac 0x250f90, , ios 0x43a24;
    auto encodeWithCoder(DS_Dictionary*) = mac 0x250f70, , ios 0x43a18;
    virtual auto getTag() const = mac 0x250f50, , ios 0x43a08;
    auto isEqual(cocos2d::CCObject const*) = mac 0x250f20, , ios 0x439e4;
    auto release() = mac 0x250ea0, ios 0x43984;
    auto retain() = mac 0x250ec0, ios 0x439a8;
    virtual auto setTag(int) = mac 0x250f60, , ios 0x43a10;
    ~CCObject() = mac 0x250d20, , ios 0x6ac0;
}

class cocos2d::CCParticleSystem {
	auto resetSystem() = mac 0x46bd50;
	auto resumeSystem() = mac 0x46bd40;
	auto stopSystem() = mac 0x46bd10;
}

class cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSystemQuad* create(char const*) = mac 0x36b000;
}

class cocos2d::CCPoolManager {
	auto pop() = mac 0x214620;
	static cocos2d::CCPoolManager* sharedPoolManager() = mac 0x2142c0;
}

class cocos2d::CCRenderTexture {
	auto begin() = mac 0x35ce10;
	auto end() = mac 0x35d2c0;
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = mac 0x35c720;
	auto newCCImage(bool) = mac 0x35d7d0;
}

class cocos2d::CCRepeatForever {
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = mac 0x1f3920;
}

class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = mac 0x1f4c50;
}

class cocos2d::CCScaleTo {
	static cocos2d::CCScaleTo* create(float, float) = mac 0x1f6ff0;
	static cocos2d::CCScaleTo* create(float, float, float) = mac 0x1f70f0;
}

class cocos2d::CCScene {
	static cocos2d::CCScene* create() = mac 0x13c140, ios 0x163070;
	auto getHighestChildZ() = mac 0x13c200, ios 0x1630e4;
}

class cocos2d::CCScheduler {
	auto scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = mac 0x242b20;
	auto scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = mac 0x2438d0;
	auto unscheduleAllForTarget(cocos2d::CCObject*) = mac 0x243e40;
	auto update(float delta);
}

class cocos2d::CCSequence {
}

class cocos2d::CCSet {
	CCSet() = mac 0x45ad80, ios 0x10e870;
	virtual ~CCSet() = mac 0x45b050;
	virtual auto acceptVisitor(cocos2d::CCDataVisitor&) = mac 0x45b090;
}

class cocos2d::CCSprite {
	virtual ~CCSprite() = mac 0x133430, ios 0x15b92c;
    virtual auto init() = mac 0x132ef0, ios 0x15b488;
    virtual auto setVertexZ(float) = mac 0x134a80, ios 0x15ccc8;
    virtual auto setScaleX(float) = mac 0x134900, ios 0x15cb3c;
    virtual auto setScaleY(float) = mac 0x134980, ios 0x15cbbc;
    virtual auto setScale(float) = mac 0x134a00, ios 0x15cc3c;
    virtual auto setPosition(cocos2d::CCPoint const&) = mac 0x134650, ios 0x15c878;
    virtual auto setSkewX(float) = mac 0x134820, ios 0x15ca5c;
    virtual auto setSkewY(float) = mac 0x134890, ios 0x15cacc;
    virtual auto setAnchorPoint(cocos2d::CCPoint const&) = mac 0x134af0, ios 0x15cd38;
    virtual auto setVisible(bool) = mac 0x134b70, ios 0x15cdac;
    virtual auto setRotation(float) = mac 0x1346d0, ios 0x15c90c;
    virtual auto setRotationX(float) = mac 0x134740, ios 0x15c97c;
    virtual auto setRotationY(float) = mac 0x1347b0, ios 0x15c9ec;
    virtual auto ignoreAnchorPointForPosition(bool) = mac 0x134b60, ios 0x15cda8;
    virtual auto addChild(cocos2d::CCNode*) = mac 0x134190, ios 0x15c34c;
    virtual auto addChild(cocos2d::CCNode*, int) = mac 0x1341a0, ios 0x15c350;
    virtual auto addChild(cocos2d::CCNode*, int, int) = mac 0x1341b0, ios 0x15c354;
    virtual auto removeChild(cocos2d::CCNode*, bool) = mac 0x134300, ios 0x15c4cc;
    virtual auto removeAllChildrenWithCleanup(bool) = mac 0x134340, ios 0x15c514;
    virtual auto reorderChild(cocos2d::CCNode*, int) = mac 0x134270, ios 0x15c438;
    virtual auto sortAllChildren() = mac 0x1343f0, ios 0x15c5cc;
    virtual auto draw() = mac 0x134070, ios 0x15c240;
    virtual auto updateTransform() = mac 0x133b70, ios 0x15be0c;
    virtual auto setOpacity(unsigned char) = mac 0x134da0, ios 0x15cf48;
    virtual auto updateDisplayedOpacity(unsigned char) = mac 0x1354c0, ios 0x15d228;
    virtual auto setColor(cocos2d::_ccColor3B const&) = mac 0x134ff0, ios 0x15d088;
    virtual auto updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x135370, ios 0x15d1dc;
    virtual auto setOpacityModifyRGB(bool) = mac 0x135200, ios 0x15d198;
    virtual auto isOpacityModifyRGB() = mac 0x135350, ios 0x15d1cc;
    virtual auto initWithTexture(cocos2d::CCTexture2D*) = mac 0x133110, ios 0x15b608;
    virtual auto initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = mac 0x1330f0, ios 0x15b5f8;
    virtual auto initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = mac 0x132f10, ios 0x15b4a0;
    virtual auto initWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x133270, ios 0x15b78c;
    virtual auto initWithSpriteFrameName(char const*) = mac 0x1332c0, ios 0x15b7f0;
    virtual auto initWithFile(char const*) = mac 0x133180, ios 0x15b684;
    virtual auto initWithFile(char const*, cocos2d::CCRect const&) = mac 0x133210, ios 0x15b720;
    virtual auto setTexture(cocos2d::CCTexture2D*) = mac 0x135a90, ios 0x15d610;
    virtual auto getTexture() = mac 0x135c00, ios 0x15d748;
    // virtual auto setBlendFunc(cocos2d::_ccBlendFunc) = mac 0x50590, ios 0x14c7c;
    // virtual cocos2d::_ccBlendFunc getBlendFunc() = mac 0x505a0, ios 0x14c88;
    virtual auto setChildColor(cocos2d::_ccColor3B const&) = mac 0x135160, ios 0x15d0f4;
    virtual auto setChildOpacity(unsigned char) = mac 0x134f50, ios 0x15cfe4;
    virtual auto getBatchNode() = mac 0x135910, ios 0x15d4e0;
    virtual auto setBatchNode(cocos2d::CCSpriteBatchNode*) = mac 0x135920, ios 0x15d4e8;
    virtual auto refreshTextureRect() = mac 0x133520, ios 0x15b964;
    virtual auto setTextureRect(cocos2d::CCRect const&) = mac 0x133560, ios 0x15b9a8;
    virtual auto setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = mac 0x133580, ios 0x15b9bc;
    virtual auto setVertexRect(cocos2d::CCRect const&) = mac 0x1338f0, ios 0x15bc5c;
    virtual auto setDisplayFrame(cocos2d::CCSpriteFrame*) = mac 0x135610, ios 0x15d274;
    virtual auto isFrameDisplayed(cocos2d::CCSpriteFrame*) = mac 0x1356d0, ios 0x15d344;
    virtual auto displayFrame() = mac 0x135760, ios 0x15d3d8;
    virtual auto setDisplayFrameWithAnimationName(char const*, int) = mac 0x135680, ios 0x15d2f0;
    // virtual auto isDirty() = mac 0x505b0, ios 0x14c94;
    // virtual auto setDirty(bool) = mac 0x505c0, ios 0x14c9c;
    virtual auto setTextureCoords(cocos2d::CCRect const&) = mac 0x133910, ios 0x15bc64;
    virtual auto updateBlendFunc() = mac 0x135a20, ios 0x15d5a0;
    virtual auto setReorderChildDirtyRecursively() = mac 0x134550, ios 0x15c764;
    virtual auto setDirtyRecursively(bool) = mac 0x1345b0, ios 0x15c7cc;

	CCSprite() = mac 0x133300;

	static cocos2d::CCSprite* create() = mac 0x132df0;
	static cocos2d::CCSprite* create(char const*) = mac 0x132a80;
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x132cb0;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = mac 0x132dc0;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = mac 0x132790;

	void setFlipX(bool) = mac 0x134be0;
	void setFlipY(bool) = mac 0x134c30;
}

class cocos2d::CCSpriteBatchNode {
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int) = mac 0xbb540;
	static auto createWithTexture(cocos2d::CCTexture2D*, unsigned int) = mac 0xbb310;
	auto getUsedAtlasCapacity() = mac 0xbc6b0;
	auto increaseAtlasCapacity(unsigned int) = mac 0xbc670;
}

class cocos2d::CCSpriteFrame {
	static auto createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = mac 0x1ac7f0;
	static auto createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = mac 0x1ac5c0;
}

class cocos2d::CCSpriteFrameCache {
	auto addSpriteFramesWithFile(char const*) = mac 0x199a10, ios 0x29e818;
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = mac 0x198970, ios 0x29dc4c;
	auto spriteFrameByName(char const*) = mac 0x19a7e0;
}

class cocos2d::CCStandardTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int) = mac 0x247f30;
    virtual auto initWithDelegate(cocos2d::CCTouchDelegate*, int) = mac 0x247ed0, , ios 0x69; // iOS stub
    ~CCStandardTouchHandler() = mac 0x2482a0, , ios 0x6d28;
}

class cocos2d::CCString {
	// virtual ~CCString() = mac 0x44c590;
	virtual auto isEqual(cocos2d::CCObject const*) = mac 0x44c8f0;
	virtual auto acceptVisitor(cocos2d::CCDataVisitor&) = mac 0x44ccb0;
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = mac 0x44c870;
	// cocos2d::CCString::create(gd::string const&) = mac 0x44c960;
	// CCString(gd::string const&) = mac 0x44c310;
	auto boolValue() const = mac 0x44c810, ios 0x1a1d88;
	auto doubleValue() const = mac 0x44c7f0;
	auto floatValue() const = mac 0x44c7d0;
	auto getCString() const = mac 0x44c470, ios 0x1a1b7c;
	auto intValue() const = mac 0x44c780, ios 0x1a1ca8;
}

class cocos2d::CCTargetedTouchHandler {
    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = mac 0x248010;
    auto initWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = mac 0x2480f0, , ios 0x69; // iOS stub
    ~CCTargetedTouchHandler() = mac 0x248180, , ios 0x6cec;
}


class cocos2d::CCTexture2D {
	~CCTexture2D() = mac 0x246350;
	CCTexture2D() = mac 0x246280;
	auto getContentSize() = mac 0x246460;
	auto getMaxS() = mac 0x2464e0;
	auto getMaxT() = mac 0x246500;
	auto getName() = mac 0x246450;
	auto getPixelFormat() = mac 0x246420;
	auto getPixelsHigh() = mac 0x246440;
	auto getPixelsWide() = mac 0x246430;
	auto getShaderProgram() = mac 0x246520;
	auto initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = mac 0x2469a0;
	auto initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = mac 0x2465d0;
	auto setAliasTexParameters() = mac 0x247a20;
	auto setAntiAliasTexParameters() = mac 0x247a80;
	auto setMaxS(float) = mac 0x2464f0;
	auto setMaxT(float) = mac 0x246510;
	auto setShaderProgram(cocos2d::CCGLProgram*) = mac 0x246530;
	auto initWithImage(cocos2d::CCImage*) = mac 0x246940;
	auto setTexParameters(cocos2d::_ccTexParams*) = mac 0x247980;
}

class cocos2d::CCTextFieldDelegate {

}

class cocos2d::CCTextureCache {
	auto addImage(char const*, bool) = mac 0x358120, ios 0xa8388;
	static cocos2d::CCTextureCache* sharedTextureCache() = mac 0x356e00, ios 0xa81ec;
}

class cocos2d::CCTintTo {
	static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = mac 0x1f82a0;
}

class cocos2d::CCTouch {
	auto getDelta() const = mac 0x38340;
	auto getLocationInView() const = mac 0x38250;
	auto getPreviousLocationInView() const = mac 0x38270;
	auto getLocation() const = mac 0x382b0, ios 0x21ce78;
}

class cocos2d::CCTouchDispatcher {
	auto decrementForcePrio(int) = mac 0x280f70, ios 0xcc280;
	auto incrementForcePrio(int) = mac 0x280f60, ios 0xcc268;
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
}

class cocos2d::CCTouchHandler {
    virtual auto initWithDelegate(cocos2d::CCTouchDelegate*, int) = mac 0x247d10, , ios 0x69f8;
    ~CCTouchHandler() = mac 0x247de0, , ios 0x6ac0;
}

class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = mac 0x8ea30, ios 0x12c244;
}

// class cocos2d::ZipUtils {
// 	static auto compressString(gd::string, bool, int) = mac 0xe9a50;
// 	static auto decompressString(gd::string, bool, int) = mac 0xea380;
// }


class cocos2d::extension::CCControlColourPicker {
	auto setColorValue(cocos2d::_ccColor3B const&) = mac 0x1aac10;
}

class cocos2d::extension::CCControlUtils {
	static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = mac 0x1e6750;
	static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = mac 0x1e6850;
}

class cocos2d::extension::CCScale9Sprite {
    CCScale9Sprite() = mac 0x211330;
    static cocos2d::extension::CCScale9Sprite* create(char const*) = mac 0x2130d0;
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = mac 0x212ef0;
    virtual ~CCScale9Sprite() = mac 0x211590;
    virtual auto init() = mac 0x2115d0;
    virtual auto setContentSize(cocos2d::CCSize const&) = mac 0x2127c0, , ios 0x13e400;
    virtual auto visit() = mac 0x213bf0;
    virtual auto getOpacity() = mac 0x213f30;
    virtual auto setOpacity(unsigned char) = mac 0x213dd0;
    virtual auto updateDisplayedOpacity(unsigned char) = mac 0x2139b0;
    virtual auto getColor() = mac 0x213db0;
    virtual auto setColor(cocos2d::_ccColor3B const&) = mac 0x213c20;
    virtual auto updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x213a20;
    virtual auto setOpacityModifyRGB(bool) = mac 0x213830;
    virtual auto isOpacityModifyRGB() = mac 0x213990;
    virtual auto getPreferredSize() = mac 0x213620;
    virtual auto setPreferredSize(cocos2d::CCSize) = mac 0x2135f0;
    virtual auto getCapInsets() = mac 0x2136e0;
    virtual auto setCapInsets(cocos2d::CCRect) = mac 0x213640;
    virtual auto getInsetLeft() = mac 0x213b30;
    virtual auto setInsetLeft(float) = mac 0x213b70;
    virtual auto getInsetTop() = mac 0x213b40;
    virtual auto setInsetTop(float) = mac 0x213b90;
    virtual auto getInsetRight() = mac 0x213b50;
    virtual auto setInsetRight(float) = mac 0x213bb0;
    virtual auto getInsetBottom() = mac 0x213b60;
    virtual auto setInsetBottom(float) = mac 0x213bd0;
    virtual auto initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = mac 0x211690;
    virtual auto initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = mac 0x211630;
    virtual auto initWithFile(char const*, cocos2d::CCRect, cocos2d::CCRect) = mac 0x212d50;
    virtual auto initWithFile(char const*, cocos2d::CCRect) = mac 0x212e80;
    virtual auto initWithFile(cocos2d::CCRect, char const*) = mac 0x212f80;
    virtual auto initWithFile(char const*) = mac 0x213080;
    virtual auto initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = mac 0x213140;
    virtual auto initWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x213250;
    virtual auto initWithSpriteFrameName(char const*, cocos2d::CCRect) = mac 0x213310;
    virtual auto initWithSpriteFrameName(char const*) = mac 0x213410;
    virtual auto updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = mac 0x211730;
    virtual auto setSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x213a90;
}

class cocos2d::extension::CCScrollView {
	CCScrollView() = mac 0x214800;
	virtual ~CCScrollView() = mac 0x214c30;
	virtual auto init() = mac 0x214fb0;
	virtual auto setContentSize(cocos2d::CCSize const&) = mac 0x215eb0;
	virtual auto getContentSize() const = mac 0x215e90;
	virtual auto addChild(cocos2d::CCNode*) = mac 0x216160;
	virtual auto addChild(cocos2d::CCNode*, int) = mac 0x216120;
	virtual auto addChild(cocos2d::CCNode*, int, int) = mac 0x216080;
	virtual auto visit() = mac 0x2164a0;
	virtual auto ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x216620;
	virtual auto ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x216890;
	virtual auto ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x216c70;
	virtual auto ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x216d30;
	virtual auto registerWithTouchDispatcher() = mac 0x214ff0;
	virtual auto setTouchEnabled(bool) = mac 0x215250;
}

// class DS_Dictionary {
// 	DS_Dictionary() = mac 0xbe9a0;
// 	int getIntegerForKey(char const*) = mac 0xc1610;
// 	void setIntegerForKey(char const*, int) = mac 0xc26b0;
// }
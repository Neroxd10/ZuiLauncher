.class public Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;


# instance fields
.field private final a:Lcom/zui/quickstep/SystemUiProxy;

.field private final b:F

.field private c:I

.field private d:Z

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected final mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->a:Lcom/zui/quickstep/SystemUiProxy;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->b:F

    new-instance p1, Lcom/zui/launcher/touch/TouchEventTranslator;

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/h;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/h;-><init>(Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;)V

    invoke-direct {p1, v0}, Lcom/zui/launcher/touch/TouchEventTranslator;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    const v2, 0x40c7c

    invoke-static {v0, v2}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v1

    :cond_1
    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->a:Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->c:I

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->a:Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCanIntercept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->c:I

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mSysUiProxy available:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->d:Z

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {v3}, Lcom/zui/launcher/touch/TouchEventTranslator;->reset()V

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {v3, v2, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->setDownParameters(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->setDownParameters(ILandroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->d:Z

    if-nez v3, :cond_4

    return v2

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {v3}, Lcom/zui/launcher/touch/TouchEventTranslator;->getDownY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {v4}, Lcom/zui/launcher/touch/TouchEventTranslator;->getDownX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->b:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->dispatchDownEvents(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->processMotionEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->b:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    iput-boolean v2, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->d:Z

    :cond_6
    return v2
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/StatusBarTouchController;->mTranslator:Lcom/zui/launcher/touch/TouchEventTranslator;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->processMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

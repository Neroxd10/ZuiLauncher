.class public Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;
.implements Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;


# instance fields
.field private final a:Lcom/zui/quickstep/RecentsActivity;

.field private final b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->a:Lcom/zui/quickstep/RecentsActivity;

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p1, v0, :cond_0

    new-instance v4, Lcom/zui/quickstep/util/NavBarPosition;

    sget-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->a:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/zui/quickstep/util/NavBarPosition;-><init>(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    new-instance p1, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    iget-object v2, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->a:Lcom/zui/quickstep/RecentsActivity;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/zui/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    return-void
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->b:Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;->a:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->startHome()V

    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 0

    return-void
.end method

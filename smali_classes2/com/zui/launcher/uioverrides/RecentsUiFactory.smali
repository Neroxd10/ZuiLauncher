.class public abstract Lcom/zui/launcher/uioverrides/RecentsUiFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/uioverrides/RecentsUiFactory$c;
    }
.end annotation


# static fields
.field public static final GO_LOW_RAM_RECENTS_ENABLED:Z = false

.field public static ROTATION_LANDSCAPE:Lcom/zui/launcher/graphics/RotationMode;

.field public static ROTATION_SEASCAPE:Lcom/zui/launcher/graphics/RotationMode;

.field public static final SET_SHELF_HEIGHT:Lcom/zui/launcher/util/UiThreadHelper$AsyncCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/uioverrides/c;->a:Lcom/zui/launcher/uioverrides/c;

    sput-object v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->SET_SHELF_HEIGHT:Lcom/zui/launcher/util/UiThreadHelper$AsyncCommand;

    new-instance v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory$a;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/RecentsUiFactory$a;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_LANDSCAPE:Lcom/zui/launcher/graphics/RotationMode;

    new-instance v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory$b;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/RecentsUiFactory$b;-><init>(F)V

    sput-object v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_SEASCAPE:Lcom/zui/launcher/graphics/RotationMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;II)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    return-void
.end method

.method public static clearSwipeSharedState(Z)V
    .locals 1

    invoke-static {}, Lcom/zui/quickstep/TouchInteractionService;->getSwipeSharedState()Lcom/zui/quickstep/SwipeSharedState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SwipeSharedState;->clearAllState(Z)V

    return-void
.end method

.method public static createRecentsViewStateController(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherStateManager$StateHandler;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/uioverrides/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/RecentsViewStateController;-><init>(Lcom/zui/launcher/Launcher;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/zui/launcher/uioverrides/RecentsViewStateForPadController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/RecentsViewStateForPadController;-><init>(Lcom/zui/launcher/Launcher;)V

    return-object v0
.end method

.method public static createTouchControllers(Lcom/zui/launcher/Launcher;)[Lcom/zui/launcher/util/TouchController;
    .locals 4

    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/zui/launcher/uioverrides/touchcontrollers/OverviewToAllAppsTouchController;

    invoke-direct {v2, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/OverviewToAllAppsTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/zui/launcher/uioverrides/touchcontrollers/LandscapeEdgeSwipeController;

    invoke-direct {v2, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/LandscapeEdgeSwipeController;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;

    iget-boolean v3, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    invoke-direct {v2, p0, v3}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/zui/launcher/Launcher;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/zui/launcher/Launcher;)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/zui/launcher/uioverrides/RecentsUiFactory$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory$c;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/zui/launcher/util/TouchController;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zui/launcher/util/TouchController;

    return-object p0
.end method

.method public static getRotationMode(Lcom/zui/launcher/DeviceProfile;)Lcom/zui/launcher/graphics/RotationMode;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_SEASCAPE:Lcom/zui/launcher/graphics/RotationMode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_LANDSCAPE:Lcom/zui/launcher/graphics/RotationMode;

    :goto_0
    return-object p0
.end method

.method public static onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isUserActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sget-object v4, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->SET_SHELF_HEIGHT:Lcom/zui/launcher/util/UiThreadHelper$AsyncCommand;

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-static {p0, v4, v2, v1}, Lcom/zui/launcher/util/UiThreadHelper;->runAsyncCommand(Landroid/content/Context;Lcom/zui/launcher/util/UiThreadHelper$AsyncCommand;II)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, v3}, Lcom/zui/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->setOverViewStateChange()V

    :cond_3
    :goto_1
    return-void
.end method

.class public Lcom/zui/launcher/uioverrides/UiFactory;
.super Lcom/zui/launcher/uioverrides/RecentsUiFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->recreateControllers()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object p0

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/states/RotationHelper;->setRotationHadDifferentUI(Z)V

    return-void
.end method

.method static synthetic c(Lcom/zui/quickstep/SysUINavigationMode;Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SysUINavigationMode;->removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-void
.end method

.method public static dumpActivity(Landroid/app/Activity;Ljava/io/PrintWriter;)Z
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/android/systemui/shared/system/ActivityCompat;

    invoke-direct {v2, p0}, Lcom/android/systemui/shared/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/system/ActivityCompat;->encodeViewHierarchy(Ljava/io/ByteArrayOutputStream;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/util/zip/Deflater;

    invoke-direct {p0}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->finish()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    const-string p0, "--encoded-view-dump-v0--"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static enableLiveUIChanges(Lcom/zui/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 4

    new-instance v0, Lcom/zui/launcher/uioverrides/g;

    invoke-direct {v0, p0}, Lcom/zui/launcher/uioverrides/g;-><init>(Lcom/zui/launcher/Launcher;)V

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRotationHelper()Lcom/zui/launcher/states/RotationHelper;

    move-result-object p0

    sget-object v3, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/zui/launcher/states/RotationHelper;->setRotationHadDifferentUI(Z)V

    new-instance p0, Lcom/zui/launcher/uioverrides/f;

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/uioverrides/f;-><init>(Lcom/zui/quickstep/SysUINavigationMode;Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-object p0
.end method

.method public static getOverviewScaleAndTranslationForNormalState(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 3

    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr v0, p0

    int-to-float p0, v0

    new-instance v0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p0, v2}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v0, v2, v2}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public static getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/zui/launcher/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    :cond_0
    return-object p0
.end method

.method public static getStateHandler(Lcom/zui/launcher/Launcher;)[Lcom/zui/launcher/LauncherStateManager$StateHandler;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zui/launcher/LauncherStateManager$StateHandler;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->createRecentsViewStateController(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherStateManager$StateHandler;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/BackButtonAlphaHandler;-><init>(Lcom/zui/launcher/Launcher;)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    return-object v0
.end method

.method public static onCreate(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.apps_view_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/uioverrides/UiFactory$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/UiFactory$a;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.shelf_bounce_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/uioverrides/UiFactory$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/uioverrides/UiFactory$b;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public static onEnterAnimationComplete(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method public static onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/launcher/LauncherState;->hideBackButton:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launcher.getStateManager().getState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher.UiFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const v2, 0x7fe17

    invoke-static {p0, v2}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    sget-object v3, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/quickstep/OverviewInteractionState;

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/zui/quickstep/OverviewInteractionState;->setBackButtonAlpha(FZ)V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isGlobalSearchViewShown()Z

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p0

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherRootView;->setDisallowBackGesture(Z)V

    :cond_5
    return-void
.end method

.method public static onTrimMemory(Landroid/content/Context;I)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/RecentsModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsModel;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public static resetPendingActivityResults(Lcom/zui/launcher/Launcher;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, v1}, Lcom/zui/launcher/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/zui/launcher/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/zui/launcher/proxy/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, v0, Lcom/zui/launcher/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    iput-object p3, v0, Lcom/zui/launcher/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/zui/launcher/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/zui/launcher/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lcom/zui/launcher/proxy/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, v0, Lcom/zui/launcher/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    iput-object p3, v0, Lcom/zui/launcher/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iput p4, v0, Lcom/zui/launcher/proxy/StartActivityParams;->flagsMask:I

    iput p5, v0, Lcom/zui/launcher/proxy/StartActivityParams;->flagsValues:I

    iput p6, v0, Lcom/zui/launcher/proxy/StartActivityParams;->extraFlags:I

    iput-object p7, v0, Lcom/zui/launcher/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/zui/launcher/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/zui/launcher/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static useFadeOutAnimationForLauncherStart(Lcom/zui/launcher/Launcher;Landroid/os/CancellationSignal;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    new-instance v0, Lcom/zui/launcher/uioverrides/UiFactory$c;

    invoke-direct {v0, p1}, Lcom/zui/launcher/uioverrides/UiFactory$c;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->setRemoteAnimationProvider(Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    return-void
.end method

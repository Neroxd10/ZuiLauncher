.class public abstract Lcom/zui/launcher/BaseDraggingActivity;
.super Lcom/zui/launcher/BaseActivity;
.source ""

# interfaces
.implements Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;
    }
.end annotation


# static fields
.field public static final AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;


# instance fields
.field private f:Landroid/view/ActionMode;

.field private g:Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;

.field private h:I

.field private i:Lcom/zui/launcher/uioverrides/DisplayRotationListener;

.field private j:Z

.field protected mIsSafeModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/BaseActivity;-><init>()V

    const v0, 0x7f13012d

    iput v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->h:I

    return-void
.end method

.method public static synthetic a(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/BaseDraggingActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->reapplyUi()V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Intent;Landroid/os/Bundle;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v3, v8

    move-object v4, v1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    sget-object p2, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/model/AppLaunchTracker;

    iget-object v2, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v8, v1, v2, p4}, Lcom/zui/launcher/model/AppLaunchTracker;->onStartShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/BaseDraggingActivity;->onErrorStartingShortcut(Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_1
    return-void

    :cond_1
    throw p2
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->h:I

    invoke-static {p0}, Lcom/zui/launcher/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateAppStartPos(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected calculateAppStartPosInAllapps(Landroid/view/View;)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public canUseWorkspaceIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/BaseDraggingActivity;->j:Z

    return p0
.end method

.method public fastFinishFIVIfNeeded()V
    .locals 3

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/zui/launcher/views/FloatingIconView;

    if-eqz v2, :cond_1

    move-object p0, v1

    check-cast p0, Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/FloatingIconView;->fastFinish()V

    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public finishAutoCancelActionMode()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->f:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zui/launcher/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BaseDraggingActivity;->f:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
.end method

.method public final getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v1, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget p0, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-direct {v0, v2, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public goToNormalState()V
    .locals 0

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->f:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    iput-object p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->f:Landroid/view/ActionMode;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/zui/launcher/BaseDraggingActivity;->d()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    new-instance p1, Lcom/zui/launcher/uioverrides/DisplayRotationListener;

    new-instance v0, Lcom/zui/launcher/k;

    invoke-direct {v0, p0}, Lcom/zui/launcher/k;-><init>(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/uioverrides/DisplayRotationListener;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->i:Lcom/zui/launcher/uioverrides/DisplayRotationListener;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->addOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    invoke-static {p0}, Lcom/zui/launcher/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->h:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->h:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->removeOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->i:Lcom/zui/launcher/uioverrides/DisplayRotationListener;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RotationWatcher;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->g:Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;

    return-void
.end method

.method protected onDeviceProfileInitiated()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->i:Lcom/zui/launcher/uioverrides/DisplayRotationListener;

    invoke-virtual {v0}, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->enable()V

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/BaseDraggingActivity;->i:Lcom/zui/launcher/uioverrides/DisplayRotationListener;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->disable()V

    :goto_0
    return-void
.end method

.method protected onErrorStartingShortcut(Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/BaseDraggingActivity;->d()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->g:Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;->onActivityStart(Lcom/zui/launcher/BaseDraggingActivity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->g:Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;

    :cond_0
    return-void
.end method

.method protected abstract reapplyUi()V
.end method

.method public returnToHomescreen()V
    .locals 0

    return-void
.end method

.method public setDrawRootViewBackground(Z)V
    .locals 0

    return-void
.end method

.method public setIgnoreWorkspaceView(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->j:Z

    return-void
.end method

.method public setOnStartCallback(Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/BaseDraggingActivity;",
            ">(",
            "Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/BaseDraggingActivity;->g:Lcom/zui/launcher/BaseDraggingActivity$OnStartCallback;

    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z
    .locals 8
    .param p3    # Lcom/zui/launcher/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/132900132"

    if-eqz v0, :cond_0

    const-string v0, "startActivitySafely 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f1205e9

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    instance-of v0, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    iget v0, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/zui/launcher/BaseDraggingActivity;->calculateAppStartPos(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isPowerSafeMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_3
    aget v4, v0, v4

    aget v3, v0, v3

    aget v7, v0, v2

    aget v0, v0, v5

    :goto_1
    invoke-static {p1, v4, v3, v7, v0}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_4
    instance-of v0, p3, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isPowerSafeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    :goto_2
    move-object v0, v6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->calculateAppStartPosInAllapps(Landroid/view/View;)[I

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_7
    aget v4, v0, v4

    aget v3, v0, v3

    aget v7, v0, v2

    aget v0, v0, v5

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_5

    goto :goto_0

    :goto_3
    if-nez p3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    :goto_4
    const/high16 v3, 0x10000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_a
    :try_start_0
    instance-of v3, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_c

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v3, v5, :cond_b

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    :cond_b
    move-object v3, p3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v5

    goto :goto_5

    :cond_c
    move v3, v2

    :goto_5
    if-eqz v3, :cond_d

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/zui/launcher/BaseDraggingActivity;->c(Landroid/content/Intent;Landroid/os/Bundle;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_f

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v3, v6, v4, v0}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, v6, p4}, Lcom/zui/launcher/model/AppLaunchTracker;->onStartApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    :goto_6
    sget-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_10

    const-string v3, "startActivitySafely 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p4}, Lcom/zui/launcher/model/AppLaunchTracker;->onStartApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getStatsLogManager()Lcom/zui/launcher/logging/StatsLogManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/zui/launcher/logging/StatsLogManager;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    const p4, 0x7f12006e

    invoke-static {p0, p4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to launch. tag="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", e ->"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseDraggingActivity"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startFloatActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z
    .locals 7
    .param p3    # Lcom/zui/launcher/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/132900132"

    if-eqz v0, :cond_0

    const-string v0, "startFloatActivitySafely 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lcom/zui/launcher/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f1205e9

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeFreeformOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x438

    const/16 v5, 0x3e8

    const/16 v6, 0x8c

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez p3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_3
    :try_start_0
    instance-of v4, p3, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v4, v5, :cond_4

    iget v4, p3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_5

    :cond_4
    move-object v4, p3

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-eqz v4, :cond_6

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/zui/launcher/BaseDraggingActivity;->c(Landroid/content/Intent;Landroid/os/Bundle;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v4, v3, v6, v0}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1, v3, p4}, Lcom/zui/launcher/model/AppLaunchTracker;->onStartApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    sget-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_9

    const-string v3, "startFloatActivitySafely 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getStatsLogManager()Lcom/zui/launcher/logging/StatsLogManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/zui/launcher/logging/StatsLogManager;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    const p4, 0x7f12006e

    invoke-static {p0, p4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startFloatActivitySafely Unable to launch. tag="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", e ->"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseDraggingActivity"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startShortcutIntentSafely(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/zui/launcher/BaseDraggingActivity;->c(Landroid/content/Intent;Landroid/os/Bundle;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateWorkspaceScroll()V
    .locals 0

    return-void
.end method

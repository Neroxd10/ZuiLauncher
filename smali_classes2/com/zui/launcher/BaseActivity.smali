.class public abstract Lcom/zui/launcher/BaseActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;
.implements Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;
.implements Lcom/zui/launcher/views/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;,
        Lcom/zui/launcher/BaseActivity$ActivityFlags;,
        Lcom/zui/launcher/BaseActivity$InvisibilityFlags;
    }
.end annotation


# static fields
.field public static final ACTIVITY_STATE_DEFERRED_RESUMED:I = 0x4

.field public static final ACTIVITY_STATE_RESUMED:I = 0x2

.field public static final ACTIVITY_STATE_STARTED:I = 0x1

.field public static final ACTIVITY_STATE_TRANSITION_ACTIVE:I = 0x40

.field public static final ACTIVITY_STATE_USER_ACTIVE:I = 0x10

.field public static final ACTIVITY_STATE_USER_WILL_BE_ACTIVE:I = 0x20

.field public static final ACTIVITY_STATE_WINDOW_FOCUSED:I = 0x8

.field public static final INVISIBLE_ALL:I = 0xf

.field public static final INVISIBLE_BY_APP_TRANSITIONS:I = 0x2

.field public static final INVISIBLE_BY_PENDING_FLAGS:I = 0x4

.field public static final INVISIBLE_BY_STATE_HANDLER:I = 0x1

.field public static final PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION:I = 0x8

.field public static final STATE_HANDLER_INVISIBILITY_FLAGS:I = 0x9


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private final e:Lcom/zui/launcher/util/ViewCache;

.field protected mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

.field protected mStatsLogManager:Lcom/zui/launcher/logging/StatsLogManager;

.field protected mSystemUiController:Lcom/zui/launcher/util/SystemUiController;

.field protected mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/zui/launcher/util/ViewCache;

    invoke-direct {v0}, Lcom/zui/launcher/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->e:Lcom/zui/launcher/util/ViewCache;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/BaseActivity;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lcom/zui/launcher/BaseActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zui/launcher/BaseActivity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find BaseActivity in parent tree"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected addActivityFlags(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseActivity;->onActivityFlagsChanged(I)V

    return-void
.end method

.method public addForceInvisibleFlag(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/BaseActivity;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/BaseActivity;->d:I

    return-void
.end method

.method public addMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearForceInvisibleFlag(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/BaseActivity;->d:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/BaseActivity;->d:I

    return-void
.end method

.method protected dispatchDeviceProfileChanged()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v2, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-interface {v1, v2}, Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceProfile isTransposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSystemUiController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/BaseActivity;->mSystemUiController:Lcom/zui/launcher/util/SystemUiController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/BaseActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mForceInvisible: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityFlags()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    return p0
.end method

.method public getCurrentState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    return-object p0
.end method

.method public getScrimView()Lcom/zui/launcher/views/ScrimView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStatsLogManager()Lcom/zui/launcher/logging/StatsLogManager;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mStatsLogManager:Lcom/zui/launcher/logging/StatsLogManager;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Lcom/zui/launcher/logging/StatsLogManager;->newInstance(Landroid/content/Context;Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;)Lcom/zui/launcher/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mStatsLogManager:Lcom/zui/launcher/logging/StatsLogManager;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->mStatsLogManager:Lcom/zui/launcher/logging/StatsLogManager;

    return-object p0
.end method

.method public getSystemUiController()Lcom/zui/launcher/util/SystemUiController;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mSystemUiController:Lcom/zui/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/SystemUiController;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mSystemUiController:Lcom/zui/launcher/util/SystemUiController;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->mSystemUiController:Lcom/zui/launcher/util/SystemUiController;

    return-object p0
.end method

.method public final getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;

    return-object p0
.end method

.method public getViewCache()Lcom/zui/launcher/util/ViewCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->e:Lcom/zui/launcher/util/ViewCache;

    return-object p0
.end method

.method public hasBeenResumed()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSomeInvisibleFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->d:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFallBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForceInvisible()Z
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result p0

    return p0
.end method

.method public isNavigationBarDark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatusBarDark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserActive()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public modifyUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 0

    return-void
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p2, p0, Lcom/zui/launcher/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v0, p1}, Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->removeActivityFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->addActivityFlags(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->removeActivityFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->addActivityFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->removeActivityFlags(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/BaseActivity;->d:I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->removeActivityFlags(I)V

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->addActivityFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/BaseActivity;->removeActivityFlags(I)V

    :goto_0
    return-void
.end method

.method protected removeActivityFlags(I)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/BaseActivity;->c:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BaseActivity;->onActivityFlagsChanged(I)V

    return-void
.end method

.method public removeMultiWindowModeChangedListener(Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/LauncherApps;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BaseActivity"

    const-string p2, "Failed to start shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

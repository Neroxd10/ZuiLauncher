.class public Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen;
.super Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0802a2

    const v1, 0x7f1205a6

    invoke-direct {p0, v0, v1}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setNormalIconResId(I)V

    const v0, 0x7f0802a3

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setHighLightIconResId(I)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen$a;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method protected isAvailable(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;I)Z
    .locals 1

    iget-boolean p0, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isNotDockablePackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_3

    const/4 p0, -0x1

    if-eq p3, p0, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method protected makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 0

    new-instance p0, Lcom/android/systemui/shared/system/ActivityCompat;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityCompat;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityStarted(Lcom/zui/launcher/BaseDraggingActivity;)Z
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.quickstep.SplitScreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.system.task.SplitScreen"

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "TaskSystemShortcut"

    const-string v1, "sendBroadcast, com.zui.quickstep.SplitScreen"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const-string v0, "Tablet_Recent"

    goto :goto_0

    :cond_0
    const-string v0, "Legion_Recent"

    :goto_0
    move-object v1, v0

    iget v0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez v0, :cond_1

    const-string v0, "Click_Recent"

    goto :goto_1

    :cond_1
    const-string v0, "Drag_Recent"

    :goto_1
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez p0, :cond_2

    const-string p0, "Click_recent_Done"

    goto :goto_2

    :cond_2
    const-string p0, "Drag_recent_Done"

    :goto_2
    move-object v6, p0

    const-string v3, "\u5206\u5c4f"

    const-string v7, "Split_Screen"

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtCast"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080276

    const v1, 0x7f1205ac

    invoke-direct {p0, v0, v1}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(II)V

    return-void
.end method

.method private j(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/BaseRecentsView;

    new-instance v0, Lcom/zui/quickstep/m1;

    invoke-direct {v0, p2, p1, p0}, Lcom/zui/quickstep/m1;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/BaseRecentsView;)V

    return-object v0
.end method

.method static synthetic l(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/zui/quickstep/TaskSystemShortcut;->setTaskWindowModeToFullscreen(I)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "zui.display.port.to.disconnect.launcher"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.system.task.ExtCast"

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/BaseRecentsView;Landroid/view/View;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Move task:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to RTC extend screen"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TaskSystemShortcut"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1, p0}, Lcom/zui/quickstep/util/ContinuityUtils;->setTaskMoveToRTCExtendScreen(Landroid/content/Context;I)V

    invoke-static {p1}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    instance-of p0, p2, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p2}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    :cond_0
    return-void
.end method

.method private o(Lcom/zui/quickstep/views/TaskView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskSystemShortcut;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_1

    const p1, 0x7f080273

    goto :goto_1

    :cond_1
    const p1, 0x7f080274

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setIconResId(I)V

    const p1, 0x7f1205ad

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    const p1, 0x7f080275

    goto :goto_2

    :cond_3
    const p1, 0x7f080276

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setIconResId(I)V

    const p1, 0x7f1205ac

    :goto_3
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setLabelResId(I)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 7

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getHDMIDisplayId()I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v5, v1, :cond_0

    invoke-static {p1}, Lcom/zui/quickstep/util/ContinuityUtils;->isRTCExtendScreenEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iget-object v2, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->o(Lcom/zui/quickstep/views/TaskView;)V

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v6}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->j(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lcom/zui/quickstep/j1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/j1;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)V

    return-object v0
.end method

.method public synthetic k(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;ILcom/android/systemui/shared/recents/model/Task;)V
    .locals 8

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

    const-string v3, "\u5e94\u7528\u6295\u5c4f"

    const-string v7, "Extcast"

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p3}, Lcom/zui/quickstep/views/TaskView;->launchTask(I)V

    invoke-static {p1, p3, p4}, Lcom/zui/quickstep/TaskSystemShortcut;->d(Landroid/content/Context;ILcom/android/systemui/shared/recents/model/Task;)V

    new-instance p0, Landroid/content/Intent;

    const-string p2, "zui.display.port.to.connect.launcher"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.system.task.ExtCast"

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic m(Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result p5

    const-string v0, "android.system.task.ExtCast"

    if-nez p5, :cond_5

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isExternalMode(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p2}, Lcom/zui/quickstep/TaskSystemShortcut;->b(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p5, Lcom/zui/quickstep/k1;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/k1;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;ILcom/android/systemui/shared/recents/model/Task;)V

    const/4 p0, 0x1

    invoke-static {p2, p5, p0}, Lcom/zui/quickstep/TaskSystemShortcut;->c(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    goto :goto_4

    :cond_0
    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p5

    iget-boolean p5, p5, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p5, :cond_1

    const-string p5, "Tablet_Recent"

    goto :goto_0

    :cond_1
    const-string p5, "Legion_Recent"

    :goto_0
    move-object v1, p5

    iget p5, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez p5, :cond_2

    const-string p5, "Click_Recent"

    goto :goto_1

    :cond_2
    const-string p5, "Drag_Recent"

    :goto_1
    move-object v2, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez p0, :cond_3

    const-string p0, "Click_recent_Done"

    goto :goto_2

    :cond_3
    const-string p0, "Drag_recent_Done"

    :goto_2
    move-object v6, p0

    const-string v3, "\u5e94\u7528\u6295\u5c4f"

    const-string v7, "Extcast"

    invoke-static/range {v1 .. v7}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p3}, Lcom/zui/quickstep/views/TaskView;->launchTask(I)V

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isExternalMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p2, p3, p4}, Lcom/zui/quickstep/TaskSystemShortcut;->d(Landroid/content/Context;ILcom/android/systemui/shared/recents/model/Task;)V

    :cond_4
    new-instance p0, Landroid/content/Intent;

    const-string p1, "zui.display.port.to.connect.launcher"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isExternalMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p2}, Lcom/zui/quickstep/TaskSystemShortcut;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/zui/quickstep/l1;

    invoke-direct {p0, p1, p4, p2}, Lcom/zui/quickstep/l1;-><init>(Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;)V

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Lcom/zui/quickstep/TaskSystemShortcut;->c(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->cancelDp()Z

    new-instance p0, Landroid/content/Intent;

    const-string p1, "zui.display.port.to.disconnect.launcher"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p2, p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_4
    invoke-static {p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    return-void
.end method

.method public updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;->updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V

    invoke-direct {p0, p2}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;->o(Lcom/zui/quickstep/views/TaskView;)V

    return-void
.end method

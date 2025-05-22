.class public Lcom/zui/quickstep/TaskSystemShortcut$LockTask;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f08027d

    const v1, 0x7f1205af

    invoke-direct {p0, v0, v1}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(II)V

    return-void
.end method

.method private k(Lcom/zui/quickstep/views/TaskView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskSystemShortcut;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    const p1, 0x7f08027e

    goto :goto_1

    :cond_1
    const p1, 0x7f08027f

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setIconResId(I)V

    const p1, 0x7f1205b1

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    const p1, 0x7f08027c

    goto :goto_2

    :cond_3
    const p1, 0x7f08027d

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setIconResId(I)V

    const p1, 0x7f1205af

    :goto_3
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;->setLabelResId(I)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-direct {p0, p2}, Lcom/zui/quickstep/TaskSystemShortcut$LockTask;->k(Lcom/zui/quickstep/views/TaskView;)V

    new-instance v0, Lcom/zui/quickstep/n1;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/quickstep/n1;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$LockTask;Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;)V

    return-object v0
.end method

.method public synthetic j(Lcom/zui/quickstep/views/TaskView;Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget-boolean p3, p3, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p3, :cond_0

    const-string p3, "Tablet_Recent"

    goto :goto_0

    :cond_0
    const-string p3, "Legion_Recent"

    :goto_0
    move-object v0, p3

    iget p3, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez p3, :cond_1

    const-string p3, "Click_Recent"

    goto :goto_1

    :cond_1
    const-string p3, "Drag_Recent"

    :goto_1
    move-object v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    if-nez p0, :cond_2

    const-string p0, "Click_recent_Done"

    goto :goto_2

    :cond_2
    const-string p0, "Drag_recent_Done"

    :goto_2
    move-object v5, p0

    const-string v2, "\u9501\u5b9a\u5e94\u7528"

    const-string v6, "Lock_app"

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->updateLockState()V

    invoke-static {p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    return-void
.end method

.method public updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;->updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V

    invoke-direct {p0, p2}, Lcom/zui/quickstep/TaskSystemShortcut$LockTask;->k(Lcom/zui/quickstep/views/TaskView;)V

    return-void
.end method

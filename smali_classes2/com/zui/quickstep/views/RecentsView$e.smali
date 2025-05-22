.class Lcom/zui/quickstep/views/RecentsView$e;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/zui/quickstep/views/TaskView;)V
    .locals 2

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/quickstep/views/RecentsView;->dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V

    return-void
.end method

.method public synthetic b(Lcom/zui/quickstep/views/TaskView;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->F(Lcom/zui/quickstep/views/RecentsView;)Lcom/zui/quickstep/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->onTaskRemovedInternal()V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/quickstep/views/RecentsView;->dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V

    return-void
.end method

.method public synthetic c(Landroid/os/Handler;Lcom/zui/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    if-nez p3, :cond_0

    new-instance p3, Lcom/zui/quickstep/views/p;

    invoke-direct {p3, p0, p2}, Lcom/zui/quickstep/views/p;-><init>(Lcom/zui/quickstep/views/RecentsView$e;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic d(I)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->isOnHdmiDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v1, Lcom/zui/quickstep/views/s;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/s;-><init>(Lcom/zui/quickstep/views/RecentsView$e;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/zui/quickstep/views/RecentsView;->F(Lcom/zui/quickstep/views/RecentsView;)Lcom/zui/quickstep/RecentsModel;

    move-result-object v2

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    new-instance v3, Lcom/zui/quickstep/views/r;

    invoke-direct {v3, p0, v0, p1}, Lcom/zui/quickstep/views/r;-><init>(Lcom/zui/quickstep/views/RecentsView$e;Landroid/os/Handler;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/quickstep/RecentsModel;->findTaskWithId(ILjava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public synthetic e(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/RecentsView;->updateTaskViews(I)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/RecentsView;->reloadIfNeeded()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->t(Lcom/zui/quickstep/views/RecentsView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1, p3}, Lcom/zui/quickstep/views/RecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "remove task immediately, taskId:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/quickstep/views/RecentsView;->LLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->t(Lcom/zui/quickstep/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->reloadIfNeeded()V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->E(Lcom/zui/quickstep/views/RecentsView;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/zui/quickstep/views/RecentsView;->t(Lcom/zui/quickstep/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/views/q;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/views/q;-><init>(Lcom/zui/quickstep/views/RecentsView$e;I)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsView$e;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/zui/quickstep/views/t;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/views/t;-><init>(Lcom/zui/quickstep/views/RecentsView$e;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->moveInactiveStackBack(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.class Lcom/zui/quickstep/views/RecentsViewForPad$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/RecentsViewForPad;->createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/zui/launcher/util/PendingAnimation$OnEndListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/zui/quickstep/views/RecentsViewForPad;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/quickstep/views/TaskView;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->a:Lcom/zui/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->b:Z

    iput p4, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 4

    iget-boolean v0, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    iget-object v1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget v2, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->c:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/zui/quickstep/views/RecentsViewForPad;->g(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->h(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/RecentsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAdapter;->removeTaskView(Lcom/zui/quickstep/views/TaskView;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->getTaskViewCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->i(Lcom/zui/quickstep/views/RecentsViewForPad;)Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->startHome()V

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->resetTaskVisuals()V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad;->j(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/launcher/util/PendingAnimation;)Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$e;->d:Lcom/zui/quickstep/views/RecentsViewForPad;

    const/4 v1, 0x1

    new-instance v2, Lcom/zui/quickstep/views/s0;

    invoke-direct {v2, p0, p1}, Lcom/zui/quickstep/views/s0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad$e;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/views/RecentsViewForPad;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$e;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$e;->a(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

.method public synthetic b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$e;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

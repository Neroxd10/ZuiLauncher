.class Lcom/zui/quickstep/views/RecentsView$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/zui/quickstep/views/TaskView;ZZJ)Lcom/zui/launcher/util/PendingAnimation;
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

.field final synthetic d:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/quickstep/views/TaskView;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsView$g;->a:Lcom/zui/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/zui/quickstep/views/RecentsView$g;->b:Z

    iput p4, p0, Lcom/zui/quickstep/views/RecentsView$g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 8

    iget-boolean v0, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView$g;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget v3, p0, Lcom/zui/quickstep/views/RecentsView$g;->c:I

    invoke-static {v0, v2, v3, p1, v1}, Lcom/zui/quickstep/views/RecentsView;->H(Lcom/zui/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;ILcom/zui/launcher/util/PendingAnimation$OnEndListener;Z)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1205b0

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/quickstep/views/RecentsView$g;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v6}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->I(Lcom/zui/quickstep/views/RecentsView;)I

    move-result p1

    iget v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->c:I

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView$g;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->J(Lcom/zui/quickstep/views/RecentsView;)Lcom/zui/quickstep/views/ClearAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/ClearAllButton;->remove()V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/zui/quickstep/views/RecentsView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsView;->startHome()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsView;->updateEmptyMessage()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/PagedView;->snapToPageImmediately(I)Z

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->K(Lcom/zui/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1, v1}, Lcom/zui/quickstep/views/RecentsView;->L(Lcom/zui/quickstep/views/RecentsView;Z)V

    :goto_0
    iget-object v2, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/zui/quickstep/views/RecentsView;->onLayout(ZIIII)V

    :cond_5
    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/RecentsView;->resetTaskVisuals()V

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->u(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/util/PendingAnimation;)Lcom/zui/launcher/util/PendingAnimation;

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsView$g;->d:Lcom/zui/quickstep/views/RecentsView;

    const/4 v1, 0x1

    new-instance v2, Lcom/zui/quickstep/views/u;

    invoke-direct {v2, p0, p1}, Lcom/zui/quickstep/views/u;-><init>(Lcom/zui/quickstep/views/RecentsView$g;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView$g;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView$g;->a(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

.method public synthetic b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsView$g;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

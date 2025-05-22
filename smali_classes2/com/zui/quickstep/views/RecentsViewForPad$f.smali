.class Lcom/zui/quickstep/views/RecentsViewForPad$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/RecentsViewForPad;->createTaskMenuViewAnimation(Lcom/zui/quickstep/views/TaskView;J)Lcom/zui/launcher/util/PendingAnimation;
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

.field final synthetic b:Lcom/zui/quickstep/views/RecentsViewForPad;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsViewForPad;Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->b:Lcom/zui/quickstep/views/RecentsViewForPad;

    iput-object p2, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->getMenuView()Lcom/zui/quickstep/views/TaskMenuView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskMenuView;->performTap()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/TaskMenuView;->handleClose(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->b:Lcom/zui/quickstep/views/RecentsViewForPad;

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

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/views/RecentsViewForPad$f;->b:Lcom/zui/quickstep/views/RecentsViewForPad;

    const/4 v1, 0x1

    new-instance v2, Lcom/zui/quickstep/views/t0;

    invoke-direct {v2, p0, p1}, Lcom/zui/quickstep/views/t0;-><init>(Lcom/zui/quickstep/views/RecentsViewForPad$f;Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/zui/quickstep/views/RecentsViewForPad;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$f;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$f;->a(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

.method public synthetic b(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/RecentsViewForPad$f;->c(Lcom/zui/launcher/util/PendingAnimation$OnEndListener;)V

    return-void
.end method

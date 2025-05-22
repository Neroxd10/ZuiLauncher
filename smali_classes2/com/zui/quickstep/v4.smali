.class Lcom/zui/quickstep/v4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field final synthetic b:Lcom/zui/quickstep/BaseRecentsView;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;I)V
    .locals 0

    iput-object p2, p0, Lcom/zui/quickstep/v4;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/zui/quickstep/v4;->b:Lcom/zui/quickstep/BaseRecentsView;

    iput p4, p0, Lcom/zui/quickstep/v4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/v4;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/zui/quickstep/v4;->b:Lcom/zui/quickstep/BaseRecentsView;

    instance-of p2, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    iget p2, p0, Lcom/zui/quickstep/v4;->c:I

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/views/RecentsView;->clearIgnoreResetTask(I)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/v4;->b:Lcom/zui/quickstep/BaseRecentsView;

    iget-object p2, p0, Lcom/zui/quickstep/v4;->a:Lcom/zui/quickstep/views/TaskView;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, p3}, Lcom/zui/quickstep/BaseRecentsView;->dismissTask(Lcom/zui/quickstep/views/TaskView;ZZ)V

    iget-object p1, p0, Lcom/zui/quickstep/v4;->b:Lcom/zui/quickstep/BaseRecentsView;

    instance-of p2, p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/zui/quickstep/views/RecentsViewForPad;

    iget-object p0, p0, Lcom/zui/quickstep/v4;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/RecentsViewForPad;->onMulti(Lcom/zui/quickstep/views/TaskView;)V

    :cond_1
    return-void
.end method

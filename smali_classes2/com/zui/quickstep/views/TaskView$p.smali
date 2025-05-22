.class Lcom/zui/quickstep/views/TaskView$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$p;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView$p;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p1}, Lcom/zui/quickstep/views/TaskView;->m(Lcom/zui/quickstep/views/TaskView;)Lcom/zui/quickstep/views/TaskMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView$p;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p1}, Lcom/zui/quickstep/views/TaskView;->m(Lcom/zui/quickstep/views/TaskView;)Lcom/zui/quickstep/views/TaskMenuView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$p;->a:Lcom/zui/quickstep/views/TaskView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/TaskView;->o(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/views/TaskMenuView;)Lcom/zui/quickstep/views/TaskMenuView;

    :cond_0
    return-void
.end method

.class Lcom/zui/quickstep/views/TaskView$q;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/TaskView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$q;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/views/TaskView$q;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p1}, Lcom/zui/quickstep/views/TaskView;->y(Lcom/zui/quickstep/views/TaskView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$q;->a:Lcom/zui/quickstep/views/TaskView;

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskView;->y(Lcom/zui/quickstep/views/TaskView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p0}, Landroid/graphics/Outline;->setOval(IIII)V

    const p0, 0x3eb33333    # 0.35f

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

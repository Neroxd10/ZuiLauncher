.class Lcom/zui/quickstep/WindowTransformSwipeHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;->C0(Lcom/zui/launcher/BaseDraggingActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zui/launcher/BaseDraggingActivity;

.field final synthetic d:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Ljava/lang/Object;Landroid/view/View;Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->d:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->c:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->b:Landroid/view/View;

    new-instance v1, Lcom/zui/quickstep/a3;

    invoke-direct {v1, p0, v0}, Lcom/zui/quickstep/a3;-><init>(Lcom/zui/quickstep/WindowTransformSwipeHandler$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->c:Lcom/zui/launcher/BaseDraggingActivity;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$a;->d:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->j(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/MultiStateCallback;

    move-result-object p0

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.class Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/util/SurfaceTransactionApplier;->create(Landroid/view/View;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;->b:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;->b:Ljava/util/function/Consumer;

    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;->a:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

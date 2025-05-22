.class Lcom/zui/quickstep/util/RecentsOrientedState$b;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/function/IntConsumer;

.field final synthetic b:Lcom/zui/quickstep/util/RecentsOrientedState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/RecentsOrientedState;Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->b:Lcom/zui/quickstep/util/RecentsOrientedState;

    iput-object p3, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->a:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->b:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-static {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->b(Lcom/zui/quickstep/util/RecentsOrientedState;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->b:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-static {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->b(Lcom/zui/quickstep/util/RecentsOrientedState;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->b:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-static {v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->c(Lcom/zui/quickstep/util/RecentsOrientedState;I)I

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState$b;->a:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

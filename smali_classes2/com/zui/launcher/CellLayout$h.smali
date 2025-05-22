.class Lcom/zui/launcher/CellLayout$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout;->I(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/InterruptibleInOutAnimator;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/InterruptibleInOutAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$h;->c:Lcom/zui/launcher/CellLayout;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout$h;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/zui/launcher/CellLayout$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$h;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/zui/launcher/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/CellLayout$h;->c:Lcom/zui/launcher/CellLayout;

    invoke-static {v0}, Lcom/zui/launcher/CellLayout;->e(Lcom/zui/launcher/CellLayout;)[F

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/CellLayout$h;->b:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$h;->c:Lcom/zui/launcher/CellLayout;

    invoke-static {p1}, Lcom/zui/launcher/CellLayout;->f(Lcom/zui/launcher/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/CellLayout$h;->b:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.class Lcom/zui/launcher/dragndrop/DragView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;->animateShift(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$e;->c:Lcom/zui/launcher/dragndrop/DragView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragView$e;->a:I

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragView$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$e;->c:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView$e;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/zui/launcher/dragndrop/DragView;->e(Lcom/zui/launcher/dragndrop/DragView;I)I

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$e;->c:Lcom/zui/launcher/dragndrop/DragView;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView$e;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/zui/launcher/dragndrop/DragView;->f(Lcom/zui/launcher/dragndrop/DragView;I)I

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$e;->c:Lcom/zui/launcher/dragndrop/DragView;

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DragView;->g(Lcom/zui/launcher/dragndrop/DragView;)V

    return-void
.end method

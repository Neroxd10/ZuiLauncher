.class Lcom/zui/launcher/dragndrop/DragView$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragView;->showWidthAnim(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/zui/launcher/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragView;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragView$g;->a:I

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragView$g;->b:I

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragView$g;->c:I

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragView$g;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v0, v0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/dragndrop/DragView$g$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/dragndrop/DragView$g$a;-><init>(Lcom/zui/launcher/dragndrop/DragView$g;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView$g;->e:Lcom/zui/launcher/dragndrop/DragView;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

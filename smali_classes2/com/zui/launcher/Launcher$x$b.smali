.class Lcom/zui/launcher/Launcher$x$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher$x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/Launcher$x;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher$x;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x$b;->c:Lcom/zui/launcher/Launcher$x;

    iput p2, p0, Lcom/zui/launcher/Launcher$x$b;->a:I

    iput p3, p0, Lcom/zui/launcher/Launcher$x$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$b;->c:Lcom/zui/launcher/Launcher$x;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/Launcher$x$b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/Launcher$x$b;->b:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$x$b;->c:Lcom/zui/launcher/Launcher$x;

    iget-object p1, p1, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x$b;->c:Lcom/zui/launcher/Launcher$x;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$x;->j:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.class Lcom/zui/launcher/dragndrop/DragDeleteView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragDeleteView;-><init>(Lcom/zui/launcher/Launcher;IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dragndrop/DragDeleteView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragDeleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$b;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$b;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->i(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$b;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$b;->a:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

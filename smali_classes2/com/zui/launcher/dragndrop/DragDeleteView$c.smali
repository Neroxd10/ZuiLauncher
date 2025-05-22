.class Lcom/zui/launcher/dragndrop/DragDeleteView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/dragndrop/DragDeleteView;-><init>(Lcom/zui/launcher/Launcher;IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragDeleteView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dragndrop/DragDeleteView;F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->a:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v0, p1, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetX:F

    invoke-static {p1, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->b(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v0, p1, Lcom/zui/launcher/dragndrop/DragDeleteView;->mTargetOffsetY:F

    invoke-static {p1, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->e(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->a:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->a:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->g(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/zui/launcher/dragndrop/DragDeleteView;->h(Lcom/zui/launcher/dragndrop/DragDeleteView;I)I

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragDeleteView$c;->b:Lcom/zui/launcher/dragndrop/DragDeleteView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->i(Lcom/zui/launcher/dragndrop/DragDeleteView;F)F

    return-void
.end method

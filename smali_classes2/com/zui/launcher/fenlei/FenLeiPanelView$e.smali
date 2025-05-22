.class Lcom/zui/launcher/fenlei/FenLeiPanelView$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/fenlei/FenLeiPanelView;->d(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/fenlei/FenleiListItem;Landroid/view/View;Landroid/view/View;[I[IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/fenlei/FenleiListItem;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:[I

.field final synthetic e:Lcom/zui/launcher/dragndrop/DragLayer;

.field final synthetic f:Lcom/zui/launcher/fenlei/FenLeiPanelView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;Lcom/zui/launcher/fenlei/FenleiListItem;Landroid/view/View;Landroid/view/View;[ILcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->f:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->a:Lcom/zui/launcher/fenlei/FenleiListItem;

    iput-object p3, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->d:[I

    iput-object p6, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->e:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->e:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->a:Lcom/zui/launcher/fenlei/FenleiListItem;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$e;->d:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

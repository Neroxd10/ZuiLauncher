.class Lcom/zui/launcher/XDockView$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/zui/launcher/dragndrop/DragView;

.field final synthetic c:[I

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/zui/launcher/XDockView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockView;[ILcom/zui/launcher/dragndrop/DragView;[ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$j;->e:Lcom/zui/launcher/XDockView;

    iput-object p2, p0, Lcom/zui/launcher/XDockView$j;->a:[I

    iput-object p3, p0, Lcom/zui/launcher/XDockView$j;->b:Lcom/zui/launcher/dragndrop/DragView;

    iput-object p4, p0, Lcom/zui/launcher/XDockView$j;->c:[I

    iput-object p5, p0, Lcom/zui/launcher/XDockView$j;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/XDockView$j;->e:Lcom/zui/launcher/XDockView;

    invoke-static {v0}, Lcom/zui/launcher/XDockView;->i(Lcom/zui/launcher/XDockView;)Lcom/zui/launcher/XDockViewAnimUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/XDockView$j;->a:[I

    iget-object v2, p0, Lcom/zui/launcher/XDockView$j;->b:Lcom/zui/launcher/dragndrop/DragView;

    iget-object v3, p0, Lcom/zui/launcher/XDockView$j;->c:[I

    iget-object v4, p0, Lcom/zui/launcher/XDockView$j;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/XDockViewAnimUtil;->startDragViewAnim([ILandroid/view/View;[ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/XDockView$j;->e:Lcom/zui/launcher/XDockView;

    iget-object p0, p0, Lcom/zui/launcher/XDockView;->mAnimatorSet:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class Lcom/zui/launcher/CellLayout$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/zui/launcher/CellLayout$LayoutParams;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/zui/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$d;->d:Lcom/zui/launcher/CellLayout;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout$d;->b:Lcom/zui/launcher/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/zui/launcher/CellLayout$d;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$d;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/CellLayout$d;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/zui/launcher/CellLayout$d;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$d;->b:Lcom/zui/launcher/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$d;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/CellLayout$d;->d:Lcom/zui/launcher/CellLayout;

    iget-object p1, p1, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$d;->b:Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/CellLayout$d;->d:Lcom/zui/launcher/CellLayout;

    iget-object p1, p1, Lcom/zui/launcher/CellLayout;->y:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$d;->b:Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

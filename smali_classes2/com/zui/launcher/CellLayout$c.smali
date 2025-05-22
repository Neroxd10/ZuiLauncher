.class Lcom/zui/launcher/CellLayout$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/CellLayout$LayoutParams;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Lcom/zui/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/CellLayout$LayoutParams;IIIILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/CellLayout$c;->g:Lcom/zui/launcher/CellLayout;

    iput-object p2, p0, Lcom/zui/launcher/CellLayout$c;->a:Lcom/zui/launcher/CellLayout$LayoutParams;

    iput p3, p0, Lcom/zui/launcher/CellLayout$c;->b:I

    iput p4, p0, Lcom/zui/launcher/CellLayout$c;->c:I

    iput p5, p0, Lcom/zui/launcher/CellLayout$c;->d:I

    iput p6, p0, Lcom/zui/launcher/CellLayout$c;->e:I

    iput-object p7, p0, Lcom/zui/launcher/CellLayout$c;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$c;->a:Lcom/zui/launcher/CellLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/zui/launcher/CellLayout$c;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/zui/launcher/CellLayout$c;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    iget v2, p0, Lcom/zui/launcher/CellLayout$c;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/CellLayout$c;->e:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$c;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

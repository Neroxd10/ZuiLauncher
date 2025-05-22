.class Lcom/zui/launcher/folder/PreviewBackground$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/PreviewBackground;->l(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/zui/launcher/folder/PreviewBackground;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/PreviewBackground;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->e:Lcom/zui/launcher/folder/PreviewBackground;

    iput p2, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->a:F

    iput p3, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->b:F

    iput p4, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->c:F

    iput p5, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->e:Lcom/zui/launcher/folder/PreviewBackground;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->a:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->b:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->c:F

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->d:F

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    invoke-static {v0, p1}, Lcom/zui/launcher/folder/PreviewBackground;->j(Lcom/zui/launcher/folder/PreviewBackground;F)F

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground$g;->e:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method

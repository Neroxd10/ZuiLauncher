.class Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/VerticalScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private final c:Z

.field private final d:Z

.field private e:Landroid/graphics/Camera;

.field final synthetic f:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->f:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean p2, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->c:Z

    iput-boolean p3, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->d:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->a:F

    iget v1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->b:F

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->e:Landroid/graphics/Camera;

    iget-boolean v3, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->d:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-boolean v4, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->c:Z

    const/4 v5, 0x0

    int-to-float v3, v3

    iget p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->b:F

    mul-float/2addr v3, p0

    if-eqz v4, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    :cond_1
    mul-float/2addr v3, p1

    invoke-virtual {v2, v5, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float p0, v0

    neg-float p1, v1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->e:Landroid/graphics/Camera;

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->f:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    invoke-virtual {p1}, Landroid/widget/TextSwitcher;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->b:F

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->f:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    invoke-virtual {p1}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;->a:F

    return-void
.end method

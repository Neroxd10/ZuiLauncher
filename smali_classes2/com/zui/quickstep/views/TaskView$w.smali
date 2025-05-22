.class final Lcom/zui/quickstep/views/TaskView$w;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    const v0, 0x7f0707d5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/TaskView$w;->a:I

    iput-object p2, p0, Lcom/zui/quickstep/views/TaskView$w;->b:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/TaskView$w;->b:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskView$w;->b:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v0, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    iget v2, p0, Lcom/zui/quickstep/views/TaskView$w;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v5, v2

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v6, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p1

    mul-float/2addr v2, v0

    float-to-int v7, v2

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskView$w;->b:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget v8, p0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    const/4 v4, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

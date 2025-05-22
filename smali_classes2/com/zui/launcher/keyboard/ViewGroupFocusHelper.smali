.class public Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;
.super Lcom/zui/launcher/keyboard/FocusIndicatorHelper;
.source ""


# instance fields
.field private final o:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;->o:Landroid/view/View;

    return-void
.end method

.method private e(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;->o:Landroid/view/View;

    if-eq v0, v1, :cond_1

    instance-of v1, v0, Lcom/zui/launcher/PagedView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/PagedView;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p0, v0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

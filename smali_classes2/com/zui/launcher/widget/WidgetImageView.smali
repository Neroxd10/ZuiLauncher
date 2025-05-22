.class public Lcom/zui/launcher/widget/WidgetImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/widget/WidgetImageView;->a:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/widget/WidgetImageView;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0705ee

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/zui/launcher/widget/WidgetImageView;->c:Z

    if-nez v4, :cond_1

    cmpl-float v4, v2, v0

    if-lez v4, :cond_0

    div-float v4, v0, v2

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    iget-object v4, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v4, p0, Lcom/zui/launcher/widget/WidgetImageView;->label:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/zui/launcher/Utilities;->widgetsAddGetScaleSize(Landroid/content/Context;Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v6, v3

    move v3, v2

    move v2, v6

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetImageView;->a:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v3, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_2
    sub-float v0, v1, v3

    div-float/2addr v0, v5

    iput v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    div-float/2addr v1, v5

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    :goto_2
    return-void
.end method


# virtual methods
.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/widget/WidgetImageView;->a()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIsAddWidget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/WidgetImageView;->c:Z

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/widget/WidgetImageView;->a()V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setIsAddWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/WidgetImageView;->c:Z

    return-void
.end method

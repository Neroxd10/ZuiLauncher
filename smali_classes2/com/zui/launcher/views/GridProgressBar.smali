.class public Lcom/zui/launcher/views/GridProgressBar;
.super Landroid/view/View;
.source ""


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/GridProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/GridProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/views/GridProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/zui/launcher/R$styleable;->GridProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/zui/launcher/views/GridProgressBar;->b:I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->b:I

    iget p2, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    iget p2, p0, Lcom/zui/launcher/views/GridProgressBar;->d:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->d:I

    const/4 p2, 0x7

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->e:I

    iget p2, p0, Lcom/zui/launcher/views/GridProgressBar;->f:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->f:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->g:I

    const/16 p2, 0x8

    const/16 p4, 0x65

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->h:I

    iget p2, p0, Lcom/zui/launcher/views/GridProgressBar;->i:I

    const/4 p4, 0x6

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->i:I

    const/4 p4, 0x3

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/views/GridProgressBar;->j:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/views/GridProgressBar;->a:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/GridProgressBar;->k:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lcom/zui/launcher/views/GridProgressBar;->e:I

    iget v1, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->d:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/zui/launcher/views/GridProgressBar;->l:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->g:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->f:I

    :goto_0
    move v8, v2

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->k:I

    iget v3, p0, Lcom/zui/launcher/views/GridProgressBar;->h:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->j:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->i:I

    :goto_1
    move v9, v2

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/zui/launcher/views/GridProgressBar;->e:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v10, v2

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->e:I

    if-ge v11, v2, :cond_3

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    iget v3, p0, Lcom/zui/launcher/views/GridProgressBar;->d:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v11

    int-to-float v2, v2

    add-float v3, v0, v2

    iget-object v2, p0, Lcom/zui/launcher/views/GridProgressBar;->a:Landroid/graphics/Paint;

    if-ge v11, v10, :cond_2

    move v4, v9

    goto :goto_3

    :cond_2
    move v4, v8

    :goto_3
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    int-to-float v2, v2

    add-float v5, v3, v2

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->b:I

    int-to-float v2, v2

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/zui/launcher/views/GridProgressBar;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/views/GridProgressBar;->e:I

    iget v1, p0, Lcom/zui/launcher/views/GridProgressBar;->c:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/zui/launcher/views/GridProgressBar;->d:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/zui/launcher/views/GridProgressBar;->b:I

    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/GridProgressBar;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseDarkColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/views/GridProgressBar;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

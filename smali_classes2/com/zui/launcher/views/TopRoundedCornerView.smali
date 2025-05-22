.class public Lcom/zui/launcher/views/TopRoundedCornerView;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Path;

.field private c:[F

.field private final d:Landroid/graphics/Paint;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/TopRoundedCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->a:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->b:Landroid/graphics/Path;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->e:I

    iput p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    const/16 p3, 0x8

    new-array p3, p3, [F

    int-to-float v0, p2

    aput v0, p3, p2

    const/4 p2, 0x1

    aput v0, p3, p2

    const/4 p2, 0x2

    aput v0, p3, p2

    const/4 p2, 0x3

    aput v0, p3, p2

    const/4 p2, 0x4

    const/4 v0, 0x0

    aput v0, p3, p2

    const/4 p2, 0x5

    aput v0, p3, p2

    const/4 p2, 0x6

    aput v0, p3, p2

    const/4 p2, 0x7

    aput v0, p3, p2

    iput-object p3, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->c:[F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->d:Landroid/graphics/Paint;

    const p0, 0x7f04002d

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->e:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    if-lez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    int-to-float v0, v0

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v5, v0

    move v6, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->e:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v6, v0

    move v5, v1

    :goto_1
    move v7, v2

    move v8, v3

    iget-object v9, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->b:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->b:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->a:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->c:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p0, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setNavBarScrimHeight(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNavBarScrimWidth(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->f:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    const/4 v1, 0x0

    aput v1, v0, p1

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    aput v1, v0, p1

    const/4 p1, 0x7

    aput v1, v0, p1

    iput-object v0, p0, Lcom/zui/launcher/views/TopRoundedCornerView;->c:[F

    return-void
.end method

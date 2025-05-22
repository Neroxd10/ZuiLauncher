.class public Lcom/zui/launcher/globalsearch/DrawPathViewNew;
.super Landroid/view/View;
.source ""


# instance fields
.field private a:F

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/DrawPathViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/DrawPathViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060355

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->b:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getDiff()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->a:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->b:Landroid/graphics/Path;

    iget v1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->e:I

    int-to-float v1, v0

    iget v2, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->a:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->d:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->b:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->b:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->e:I

    return-void
.end method

.method public setDiff(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/DrawPathViewNew;->a:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLauncher(Lcom/zui/launcher/Launcher;)V
    .locals 0

    return-void
.end method

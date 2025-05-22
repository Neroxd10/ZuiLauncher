.class public Lcom/zui/quickstep/views/IconView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/views/IconView$b;,
        Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/zui/quickstep/views/IconView$b;

.field private final d:Landroid/graphics/Paint;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/zui/quickstep/views/IconView$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zui/quickstep/views/IconView$b;-><init>(Lcom/zui/quickstep/views/IconView$a;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/zui/quickstep/views/IconView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/zui/quickstep/views/IconView$b;-><init>(Lcom/zui/quickstep/views/IconView$a;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zui/quickstep/views/IconView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/zui/quickstep/views/IconView$b;-><init>(Lcom/zui/quickstep/views/IconView$a;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget-object v1, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/quickstep/views/IconView$b;->f:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06033c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, v0, Lcom/zui/quickstep/views/IconView$b;->c:I

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/zui/quickstep/views/IconView$b;->d:I

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget-object v1, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v4, v2, Lcom/zui/quickstep/views/IconView$b;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/zui/quickstep/views/IconView$b;->b:I

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v1, p0, Lcom/zui/quickstep/views/IconView$b;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Lcom/zui/quickstep/views/IconView$b;->a:I

    iput-object v3, p0, Lcom/zui/quickstep/views/IconView$b;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method private b()V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v1, v0, Lcom/zui/quickstep/views/IconView$b;->a:I

    iget v0, v0, Lcom/zui/quickstep/views/IconView$b;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget-object v2, v2, Lcom/zui/quickstep/views/IconView$b;->f:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v4, v3, Lcom/zui/quickstep/views/IconView$b;->d:I

    iget v5, v3, Lcom/zui/quickstep/views/IconView$b;->a:I

    sub-int/2addr v5, v4

    iget v3, v3, Lcom/zui/quickstep/views/IconView$b;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v5, v5, Lcom/zui/quickstep/views/IconView$b;->d:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v6, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget v6, v6, Lcom/zui/quickstep/views/IconView$b;->c:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    aget v7, v4, v6

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v5, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-boolean v1, Lcom/zui/launcher/icons/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iput-object v0, p0, Lcom/zui/quickstep/views/IconView$b;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method private c(II)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget p2, p0, Lcom/zui/quickstep/views/IconView;->e:I

    iget v1, p0, Lcom/zui/quickstep/views/IconView;->f:I

    const/16 v2, 0x11

    invoke-static {v2, p2, v1, v0, p1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public addUpdateScaleListener(Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/IconView;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getScale()F

    move-result p0

    invoke-interface {p1, p0}, Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;->onScaleUpdate(F)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/IconView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;

    move-object v1, p1

    check-cast v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;->onScaleUpdate(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget-object v1, v1, Lcom/zui/quickstep/views/IconView$b;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/views/IconView;->a()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/IconView;->b()V

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/views/IconView;->c:Lcom/zui/quickstep/views/IconView$b;

    iget-object v1, v1, Lcom/zui/quickstep/views/IconView$b;->e:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public removeUpdateScaleListener(Lcom/zui/quickstep/views/IconView$OnScaleUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/IconView;->a()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawableSize(II)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/IconView;->e:I

    iput p2, p0, Lcom/zui/quickstep/views/IconView;->f:I

    iget-object p1, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/views/IconView;->c(II)V

    :cond_0
    return-void
.end method

.method public setIconColorTint(IF)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/views/IconView;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.class public Lcom/zui/launcher/graphics/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/ShadowDrawable$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Lcom/zui/launcher/graphics/ShadowDrawable$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/graphics/ShadowDrawable$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/graphics/ShadowDrawable$b;-><init>(Lcom/zui/launcher/graphics/ShadowDrawable$a;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/graphics/ShadowDrawable;-><init>(Lcom/zui/launcher/graphics/ShadowDrawable$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/zui/launcher/graphics/ShadowDrawable$b;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->a:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/graphics/ShadowDrawable$b;Lcom/zui/launcher/graphics/ShadowDrawable$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/ShadowDrawable;-><init>(Lcom/zui/launcher/graphics/ShadowDrawable$b;)V

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p4, p0, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-object v0, v0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->i:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v2, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->e:I

    iget v3, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    sub-int/2addr v3, v2

    iget v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-boolean v2, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->g:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->f:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-boolean v2, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->g:Z

    if-eqz v2, :cond_1

    iget p0, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    iget v2, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/zui/launcher/graphics/i;

    invoke-direct {v3, v0}, Lcom/zui/launcher/graphics/i;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v2, v3}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->h:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v3, v3, Lcom/zui/launcher/graphics/ShadowDrawable$b;->e:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v4, v3, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    iget v3, v3, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/zui/launcher/graphics/i;

    invoke-direct {v5, v0}, Lcom/zui/launcher/graphics/i;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4, v3, v5}, Lcom/zui/launcher/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v4, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v4, v4, Lcom/zui/launcher/graphics/ShadowDrawable$b;->d:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v4, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    iget v5, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    new-instance v6, Lcom/zui/launcher/graphics/j;

    invoke-direct {v6, v3, v2, v1, v0}, Lcom/zui/launcher/graphics/j;-><init>(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4, v5, v6}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->h:Landroid/graphics/Bitmap;

    :goto_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0401a0

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-boolean v1, p1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->g:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->g:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/ShadowDrawable$b;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-object v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/graphics/ShadowDrawable;->b()V

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget-object v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->h:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-nez p4, :cond_0

    sget-object p4, Lcom/zui/launcher/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/launcher/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p4, Lcom/zui/launcher/graphics/ShadowDrawable$b;->d:I

    iget-object p4, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p4, Lcom/zui/launcher/graphics/ShadowDrawable$b;->e:I

    iget-object p2, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    const/4 p4, 0x3

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p2, Lcom/zui/launcher/graphics/ShadowDrawable$b;->f:I

    iget-object p2, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->e:I

    mul-int/2addr v1, v0

    add-int/2addr p4, v1

    iput p4, p2, Lcom/zui/launcher/graphics/ShadowDrawable$b;->c:I

    iget-object p2, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object v1, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    iget v1, v1, Lcom/zui/launcher/graphics/ShadowDrawable$b;->e:I

    mul-int/2addr v1, v0

    add-int/2addr p4, v1

    iput p4, p2, Lcom/zui/launcher/graphics/ShadowDrawable$b;->b:I

    iget-object p2, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p4

    iput p4, p2, Lcom/zui/launcher/graphics/ShadowDrawable$b;->a:I

    iget-object p0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->b:Lcom/zui/launcher/graphics/ShadowDrawable$b;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/graphics/ShadowDrawable$b;->i:Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "missing src attribute"

    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/graphics/ShadowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

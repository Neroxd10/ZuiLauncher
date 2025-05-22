.class public Lcom/zui/launcher/icons/ThemedIconDrawable;
.super Lcom/zui/launcher/icons/FastBitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/ThemedIconDrawable$a;,
        Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;,
        Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;,
        Lcom/zui/launcher/icons/ThemedIconDrawable$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThemedIconDrawable"


# instance fields
.field final l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

.field final m:I

.field final n:I

.field private final o:Landroid/graphics/drawable/Drawable;

.field private final p:Landroid/graphics/drawable/AdaptiveIconDrawable;

.field private final q:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>(Lcom/zui/launcher/icons/ThemedIconDrawable$b;)V
    .locals 3

    iget-object v0, p1, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->b:I

    iget-boolean v2, p1, Lcom/zui/launcher/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;IZ)V

    iget-object v0, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget v1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->c:I

    iput v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->n:I

    iget p1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$b;->b:I

    iput p1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->m:I

    iget-object v0, v0, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->o:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->n:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->p:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object p1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget-object p1, p1, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public static getColors(Landroid/content/Context;)[I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const v3, 0x106003a

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-ne v1, v5, :cond_0

    const v1, 0x1060027

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    const v1, 0x1060033

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v2

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget v1, v1, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->b:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    invoke-virtual {p1, v1, v1, v2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->n:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->p:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    iget-object v1, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->q:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 4

    new-instance v0, Lcom/zui/launcher/icons/ThemedIconDrawable$b;

    iget-object v1, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->l:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget v2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->n:I

    iget v3, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->m:I

    iget-boolean p0, p0, Lcom/zui/launcher/icons/FastBitmapDrawable;->mIsDisabled:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/icons/ThemedIconDrawable$b;-><init>(Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;IIZ)V

    return-object v0
.end method

.method public isThemed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->p:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

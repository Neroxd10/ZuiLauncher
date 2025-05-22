.class Lcom/zui/launcher/icons/ThemedIconDrawable$a;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/BitmapInfo$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ThemedIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$a;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    return-void
.end method


# virtual methods
.method public drawForPersistence(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getExtendedInfo(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/BaseIconFactory;FLandroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p5}, Lcom/zui/launcher/icons/BaseIconFactory;->getUserBadgeBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    move-object v5, p3

    new-instance p3, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;

    iget-object v3, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$a;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    move-object v0, p3

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemedBitmapInfo;-><init>(Landroid/graphics/Bitmap;ILcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;FLandroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public getThemedDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p1}, Lcom/zui/launcher/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v1

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Lcom/zui/launcher/icons/ThemedIconDrawable$a;->a:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    new-instance p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

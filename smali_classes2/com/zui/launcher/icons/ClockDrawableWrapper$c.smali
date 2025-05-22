.class Lcom/zui/launcher/icons/ClockDrawableWrapper$c;
.super Lcom/zui/launcher/icons/BitmapInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

.field public final f:Landroid/graphics/ColorFilter;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IFLcom/zui/launcher/icons/ClockDrawableWrapper$b;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;-><init>(Landroid/graphics/Bitmap;IFLcom/zui/launcher/icons/ClockDrawableWrapper$b;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;IFLcom/zui/launcher/icons/ClockDrawableWrapper$b;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iput p3, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->a:F

    iput-object p4, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->c:Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3d000000    # 0.03125f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->b:I

    iput-object p5, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->d:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->e:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    iput-object p7, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->f:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->f:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 2

    new-instance v0, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/icons/ClockDrawableWrapper$d;-><init>(Lcom/zui/launcher/icons/ClockDrawableWrapper$c;)V

    sget p0, Lcom/zui/launcher/icons/R$attr;->disabledIconAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result p0

    iput p0, v0, Lcom/zui/launcher/icons/FastBitmapDrawable;->c:F

    return-object v0
.end method

.method public newThemedIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 11

    iget-object v0, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->e:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->a(Landroid/content/Context;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;)Lcom/zui/launcher/icons/ClockDrawableWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v1

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, 0x0

    aget v2, v1, v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v10, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;

    iget-object v3, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aget v4, v1, v2

    iget v5, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->a:F

    invoke-static {v0}, Lcom/zui/launcher/icons/ClockDrawableWrapper;->b(Lcom/zui/launcher/icons/ClockDrawableWrapper;)Lcom/zui/launcher/icons/ClockDrawableWrapper$b;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->d:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->e:Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;-><init>(Landroid/graphics/Bitmap;IFLcom/zui/launcher/icons/ClockDrawableWrapper$b;Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/ThemedIconDrawable$ThemeData;Landroid/graphics/ColorFilter;)V

    invoke-virtual {v10, p1}, Lcom/zui/launcher/icons/ClockDrawableWrapper$c;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->newThemedIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public toByteArray()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

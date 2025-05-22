.class public interface abstract Lcom/zui/launcher/icons/BitmapRenderer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final USE_HARDWARE_BITMAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/zui/launcher/icons/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Canvas;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p3

    int-to-float p3, p4

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {p5, p0, v0, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zui/launcher/icons/e;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/icons/e;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-static {p3, p4, v0}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/icons/GraphicsUtils;->noteNewBitmapCreated()V

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/icons/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/icons/BitmapRenderer;->createSoftwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/icons/GraphicsUtils;->noteNewBitmapCreated()V

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/zui/launcher/icons/BitmapRenderer;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createSoftwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/zui/launcher/icons/GraphicsUtils;->noteNewBitmapCreated()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p2, p1}, Lcom/zui/launcher/icons/BitmapRenderer;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)I
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    if-ne p4, v0, :cond_1

    int-to-float p4, p0

    int-to-float v0, p1

    div-float/2addr p4, v0

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    div-int/2addr p0, p2

    return p0

    :cond_0
    div-int/2addr p1, p3

    return p1

    :cond_1
    int-to-float p4, p0

    int-to-float v0, p1

    div-float/2addr p4, v0

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    cmpl-float p4, p4, v0

    if-lez p4, :cond_2

    div-int/2addr p1, p3

    return p1

    :cond_2
    div-int/2addr p0, p2

    return p0
.end method

.method private static b(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const/4 p1, 0x0

    if-ne p4, p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static c(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    int-to-float p4, p0

    int-to-float v0, p1

    div-float v2, p4, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpl-float p3, v2, p2

    if-lez p3, :cond_0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr p2, p0

    invoke-direct {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    :cond_0
    div-float/2addr p4, p2

    float-to-int p2, p4

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    invoke-direct {p3, v1, p1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    :cond_1
    if-le p0, p1, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    if-le p0, p1, :cond_3

    sub-int p3, p0, p1

    div-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_3
    move p3, v1

    :goto_1
    if-le p0, p1, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr p1, p0

    div-int/lit8 v1, p1, 0x2

    :goto_2
    new-instance p0, Landroid/graphics/Rect;

    add-int p1, p3, p2

    add-int/2addr p2, v1

    invoke-direct {p0, p3, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static createThumbnailScaledBitmapWithSpecialSize(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->e(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/graphics/Bitmap;IILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->c(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->b(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, p0, v0, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private static e(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p2, p3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->a(IIIILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    invoke-static {p0, p2, p3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->d(Landroid/graphics/Bitmap;IILcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1

    :cond_1
    return-object p0
.end method

.class public Lcom/zui/launcher/graphics/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static m:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

.field static n:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

.field private static final o:Landroid/graphics/Rect;


# instance fields
.field private final a:Landroid/graphics/Canvas;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/BlurMaskFilter;

.field private final f:Landroid/graphics/BlurMaskFilter;

.field private final g:Landroid/graphics/BlurMaskFilter;

.field private final h:F

.field private final i:Landroid/graphics/BlurMaskFilter;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/graphics/BlurMaskFilter;

.field private final l:I

.field public final shadowBitmapPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->o:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->e:Landroid/graphics/BlurMaskFilter;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->g:Landroid/graphics/BlurMaskFilter;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const v2, 0x7f070147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->f:Landroid/graphics/BlurMaskFilter;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->h:F

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->i:Landroid/graphics/BlurMaskFilter;

    iget-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->k:Landroid/graphics/BlurMaskFilter;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->l:I

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/graphics/HolographicOutlineHelper;
    .locals 1

    sget-object v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->m:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->m:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    :cond_0
    sget-object p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->m:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    return-object p0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/zui/launcher/graphics/HolographicOutlineHelper;
    .locals 1

    sget-object v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->n:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->n:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    :cond_0
    sget-object p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->n:Lcom/zui/launcher/graphics/HolographicOutlineHelper;

    return-object p0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v3, v2, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    if-ge v5, v2, :cond_1

    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbc

    if-ge v6, v7, :cond_0

    aput-byte v9, v3, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v2, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->e:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x2

    new-array v10, v2, [I

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->f:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v12, v2, [I

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->g:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v14, v2, [I

    iget-object v2, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    aget v2, v14, v9

    neg-int v2, v2

    int-to-float v2, v2

    const/16 v16, 0x1

    aget v3, v14, v16

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->d:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v2, v14, v9

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    iget-object v7, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    aget v2, v14, v16

    neg-int v2, v2

    int-to-float v6, v2

    iget-object v7, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    aget v1, v14, v9

    int-to-float v1, v1

    aget v2, v14, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {v8, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    aget v1, v10, v9

    int-to-float v1, v1

    aget v2, v10, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    aget v1, v12, v9

    int-to-float v1, v1

    aget v2, v12, v16

    int-to-float v2, v2

    iget-object v0, v0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {v8, v13, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Outline blue is only supported on alpha bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createBitmapWithDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p2

    :cond_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setHwBitmapsInSwModeEnabled(Z)V

    if-nez p3, :cond_2

    invoke-virtual {p4}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/zui/launcher/ItemInfo;->getDownloadProgressWithState(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->createDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, p3, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public createDownloadMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-lt p4, v1, :cond_2

    const/16 v1, 0x64

    if-lt p4, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    const/4 p3, 0x2

    new-array v3, p3, [I

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->k:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    aget v7, v3, v8

    int-to-float v7, v7

    const/4 v9, 0x1

    aget v3, v3, v9

    int-to-float v3, v3

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-ltz p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float v3, p2

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0702b4

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v3, p2, p1

    div-int/2addr v3, p3

    int-to-float p1, p1

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    sub-int/2addr v1, p4

    int-to-float p3, v1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v8, v8, p2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public createDownloadMask(Landroid/content/Context;Lcom/zui/launcher/ThemedActiveIconContainer;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p3, v1, :cond_2

    const/16 v1, 0x64

    if-lt p3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->o:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v6

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    const/4 p2, 0x2

    new-array v4, p2, [I

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->k:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    aget v7, v4, v8

    int-to-float v7, v7

    const/4 v9, 0x1

    aget v4, v4, v9

    int-to-float v4, v4

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-ltz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0702b4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int v4, v2, p1

    div-int/2addr v4, p2

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    sub-int/2addr v1, p3

    int-to-float p2, v1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v4, p1

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v8, v8, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, v5, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3

    :cond_2
    :goto_0
    return-object v0
.end method

.method public createMediumDropShadow(Lcom/zui/launcher/ActiveIconView;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->l:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->o:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/zui/launcher/ActiveIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    iget v7, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    div-int/2addr v7, v6

    iget v8, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->shadowBitmapPadding:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ActiveIconView;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    new-array p1, v6, [I

    iget-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->k:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    aget v3, p1, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    int-to-float p1, p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public createMediumDropShadow(Lcom/zui/launcher/BubbleTextView;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScaleY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    if-lez v5, :cond_4

    if-gtz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v6, v5

    iget-object v7, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    const/high16 v8, -0x1000000

    if-nez v7, :cond_2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v9, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v6, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v9, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v9, v2, p1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->i:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/high16 p1, 0x40000000    # 2.0f

    iget v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->h:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    shl-int/lit8 p1, v4, 0x10

    or-int/2addr p1, v5

    iget-object v0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v8, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->h:F

    iget-object v3, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public recycleShadowBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/graphics/HolographicOutlineHelper;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

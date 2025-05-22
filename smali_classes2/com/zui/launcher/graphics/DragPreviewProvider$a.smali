.class Lcom/zui/launcher/graphics/DragPreviewProvider$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/DragPreviewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/zui/launcher/graphics/DragPreviewProvider;


# direct methods
.method constructor <init>(Lcom/zui/launcher/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->a:Landroid/graphics/Bitmap;

    iget-object p2, p1, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b:Landroid/content/Context;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/graphics/DragPreviewProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->c:Ljava/util/List;

    iget-object p2, p1, Lcom/zui/launcher/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b:Landroid/content/Context;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->a:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v4, v3, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_2

    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbc

    if-ge v8, v9, :cond_1

    aput-byte v6, v4, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    iget-object v7, v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget v7, v7, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v5, 0x2

    new-array v7, v5, [I

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget-object v9, v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070147

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v15, v5, [I

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget-object v0, v0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget v0, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v0, v0

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v0, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v0, v5, [I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    aget v8, v0, v6

    neg-int v8, v8

    int-to-float v8, v8

    const/16 v16, 0x1

    aget v9, v0, v16

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v4, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v8, v0, v6

    neg-int v8, v8

    int-to-float v11, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v12, v8

    move-object v8, v4

    move-object/from16 v17, v13

    move-object v13, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v11, v8

    aget v8, v0, v16

    neg-int v8, v8

    int-to-float v12, v8

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    aget v8, v0, v6

    int-to-float v8, v8

    aget v0, v0, v16

    int-to-float v0, v0

    invoke-virtual {v4, v5, v8, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    aget v0, v7, v6

    int-to-float v0, v0

    aget v7, v7, v16

    int-to-float v7, v7

    invoke-virtual {v4, v14, v0, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    aget v0, v15, v6

    int-to-float v0, v0

    aget v6, v15, v16

    int-to-float v6, v6

    move-object/from16 v7, v17

    invoke-virtual {v4, v7, v0, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {p0, v0}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v1, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v0, v0, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->b(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->d:Lcom/zui/launcher/graphics/DragPreviewProvider;

    iget-object v1, v1, Lcom/zui/launcher/graphics/DragPreviewProvider;->generatedDragOutlineList:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/zui/launcher/graphics/DragPreviewProvider$a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

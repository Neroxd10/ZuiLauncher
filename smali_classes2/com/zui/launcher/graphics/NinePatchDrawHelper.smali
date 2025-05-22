.class public Lcom/zui/launcher/graphics/NinePatchDrawHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTENSION_PX:I = 0x14


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/RectF;

.field public final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v12, v4, 0x2

    int-to-float v0, v12

    add-float v13, p3, v0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move v9, v12

    move/from16 v10, p3

    move v11, v13

    invoke-direct/range {v5 .. v11}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    sub-float v11, p4, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move v5, v11

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    add-int/lit8 v8, v12, -0x5

    add-int/lit8 v9, v12, 0x5

    move-object v5, p0

    move-object v6, p1

    move v10, v13

    invoke-direct/range {v5 .. v11}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->left:I

    iput p4, v0, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b:Landroid/graphics/RectF;

    iput p5, p3, Landroid/graphics/RectF;->left:F

    iput p6, p3, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b:Landroid/graphics/RectF;

    iput p4, v1, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public drawVerticallyStretched(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFFF)V
    .locals 3

    invoke-virtual/range {p0 .. p5}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a:Landroid/graphics/Rect;

    add-int/lit8 v2, v0, -0x5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->b:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, v1, Landroid/graphics/RectF;->top:F

    iput p6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/zui/launcher/graphics/NinePatchDrawHelper;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V

    return-void
.end method

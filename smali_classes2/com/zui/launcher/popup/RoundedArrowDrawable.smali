.class public Lcom/zui/launcher/popup/RoundedArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(FFFFFFFFZZI)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    move/from16 v4, p11

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    move v4, p3

    invoke-static {p1, p2, p3, v3}, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a(FFFLandroid/graphics/Path;)V

    iget-object v9, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v4 .. v9}, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b(FFFFFLandroid/graphics/Path;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz p10, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz p9, :cond_1

    move v4, v5

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    invoke-virtual {v3, v6, v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, v0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static a(FFFLandroid/graphics/Path;)V
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v8, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    div-float v4, v0, v4

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v1

    float-to-double v9, v2

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    div-double/2addr v9, v13

    sub-double v9, v6, v9

    double-to-float v1, v9

    div-float v4, v2, v4

    float-to-double v4, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    double-to-float v9, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v4, v13

    sub-double/2addr v6, v4

    double-to-float v4, v6

    div-float v5, v0, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, p0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v9, v5

    invoke-virtual {v8, v9, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v4, v5, v2

    sub-float v7, v1, v2

    add-float/2addr v5, v2

    add-float v9, v1, v2

    mul-float/2addr v3, v6

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v11, v0, v3

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v4

    move v2, v7

    move v3, v5

    move v4, v9

    move v5, v6

    move v6, v11

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static b(FFFFFLandroid/graphics/Path;)V
    .locals 9

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move v3, p1

    move v4, p2

    move v5, p0

    move v6, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    neg-float p0, p3

    neg-float p1, p2

    add-float/2addr p1, p4

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    invoke-virtual {v8, p0, p1}, Landroid/graphics/Path;->offset(FF)V

    sget-object p0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p5, v8, p0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->a:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/RoundedArrowDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.class public Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/TaskThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewPositionHelper"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Matrix;

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c:F

    iput v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d:F

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c:F

    return p0
.end method

.method static synthetic b(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c:F

    return p1
.end method

.method static synthetic c(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d:F

    return p0
.end method

.method static synthetic d(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d:F

    return p1
.end method

.method static synthetic e(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->e:Z

    return p1
.end method

.method static synthetic h(Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->f:Z

    return p1
.end method

.method private i(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    new-instance p0, Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private j(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private k(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private l(ILandroid/graphics/RectF;FLandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    mul-int/lit8 v1, p1, 0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move p1, v1

    move p2, p1

    move p4, p2

    goto :goto_1

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    move v2, v1

    move v1, p1

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/graphics/RectF;->top:F

    neg-float v1, p1

    iget p1, p2, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    move v2, p2

    move p2, p1

    :goto_0
    move p1, p4

    move p4, v2

    goto :goto_1

    :cond_2
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    move v2, v1

    move v1, p1

    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    mul-float/2addr v1, p3

    mul-float/2addr p2, p3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p2, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    iget p3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, p3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p0

    invoke-virtual {p2, p4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public getInsetsToDrawInFullscreen()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/zui/launcher/DeviceProfile;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c:F

    iput v6, v0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d:F

    iget v6, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    invoke-virtual/range {p5 .. p5}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v8}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v7

    sget-boolean v8, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    iget v8, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v11, 0x5

    if-ne v8, v11, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget v13, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v13

    mul-float/2addr v12, v6

    sub-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, v7, Landroid/graphics/RectF;->top:F

    if-eqz v8, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    iget v15, v7, Landroid/graphics/RectF;->bottom:F

    :goto_1
    add-float/2addr v13, v15

    mul-float/2addr v13, v6

    sub-float/2addr v12, v13

    iget v13, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-direct {v0, v5, v13}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->j(II)I

    move-result v15

    iget-boolean v10, v4, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez v10, :cond_2

    iget v10, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-ne v10, v9, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-direct {v0, v15}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->k(I)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iget-boolean v14, v0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->f:Z

    if-eqz v14, :cond_4

    iget-boolean v14, v4, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v14, :cond_4

    move/from16 v18, v6

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    move/from16 v18, v6

    const/4 v14, 0x0

    :goto_4
    invoke-static {}, Lcom/zui/quickstep/views/TaskThumbnailView;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    const-string v11, "updateThumbnailMatrix, currentRotation:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailData.rotation:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailInsets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deltaRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowingModeSupportsRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOrientationDifferent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useMaxScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    move/from16 v11, v19

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_5
    if-lez v15, :cond_6

    if-eqz v10, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-eqz v8, :cond_8

    iget-boolean v0, v4, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_7

    int-to-float v0, v3

    goto :goto_6

    :cond_7
    int-to-float v0, v2

    div-float v0, v0, v19

    goto :goto_7

    :cond_8
    if-eqz v9, :cond_9

    int-to-float v0, v2

    :goto_6
    div-float/2addr v0, v12

    goto :goto_7

    :cond_9
    if-eqz v14, :cond_7

    int-to-float v0, v3

    div-float/2addr v0, v12

    int-to-float v1, v2

    div-float v1, v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateThumbnailMatrix, isFreeForm:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", dp.isLandscape:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v4, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", canvasWidth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", canvasHeight:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailWidth:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v19

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailHeight: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailScale:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/quickstep/views/TaskView;->LLog(Ljava/lang/String;)V

    move/from16 v10, v16

    :goto_8
    invoke-virtual/range {p5 .. p5}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v10, :cond_b

    iget-boolean v5, v4, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_a

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float v10, v10, v18

    iget v13, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    goto :goto_9

    :cond_a
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float v10, v10, v18

    iget v13, v7, Landroid/graphics/RectF;->top:F

    :goto_9
    mul-float v13, v13, v18

    invoke-virtual {v6, v10, v13}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v6, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    mul-float v10, v10, v18

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    mul-float v7, v7, v18

    invoke-virtual {v6, v10, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v6, p1

    move/from16 v10, v18

    goto :goto_a

    :cond_b
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, v18

    invoke-direct {v5, v15, v7, v10, v6}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->l(ILandroid/graphics/RectF;FLandroid/graphics/Rect;)V

    :goto_a
    if-eqz v9, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_b

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    :goto_b
    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget-object v13, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    mul-float/2addr v14, v0

    iput v14, v13, Landroid/graphics/RectF;->left:F

    iget v15, v13, Landroid/graphics/RectF;->top:F

    mul-float/2addr v15, v0

    iput v15, v13, Landroid/graphics/RectF;->top:F

    iget-boolean v4, v4, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_d

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v10

    mul-float/2addr v4, v0

    iput v4, v13, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    mul-float/2addr v1, v0

    iput v1, v13, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    goto :goto_c

    :cond_d
    sub-float/2addr v7, v14

    int-to-float v1, v2

    sub-float/2addr v7, v1

    const/4 v1, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v13, Landroid/graphics/RectF;->right:F

    iget-object v4, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->a:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    :goto_c
    iget-object v4, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->b:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-eqz v9, :cond_e

    move v12, v11

    :cond_e
    mul-float/2addr v12, v0

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ge v4, v3, :cond_f

    iput v1, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->c:F

    :cond_f
    if-eqz v8, :cond_10

    mul-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v2, :cond_10

    iput v11, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->d:F

    :cond_10
    iput-boolean v9, v5, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->e:Z

    return-void
.end method

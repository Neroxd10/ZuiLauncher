.class Lcom/zui/quickstep/util/MotionPauseDetector$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/MotionPauseDetector$VelocityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/MotionPauseDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:[F

.field private final b:[F

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->b:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->c:I

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    iput p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->e:I

    return-void
.end method

.method private a(FF)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a:[F

    iget v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->b:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    const/16 p1, 0x14

    if-lt v1, p1, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    :cond_0
    iget p2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->c:I

    return-void
.end method

.method private b(I)Ljava/lang/Float;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a:[F

    aget v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    iget v12, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->c:I

    if-ge v2, v12, :cond_2

    sub-int v12, p1, v2

    if-gez v12, :cond_0

    add-int/lit8 v12, v12, 0x14

    :cond_0
    iget-object v13, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a:[F

    aget v13, v13, v12

    sub-float v13, v1, v13

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v14, v13, v14

    if-lez v14, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    neg-float v13, v13

    iget-object v14, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->b:[F

    aget v12, v14, v12

    mul-float v14, v13, v13

    mul-float v15, v14, v13

    mul-float v16, v15, v13

    mul-float v17, v13, v12

    mul-float v18, v14, v12

    add-float/2addr v5, v13

    add-float/2addr v6, v14

    add-float v7, v7, v17

    add-float v8, v8, v18

    add-float/2addr v9, v12

    add-float/2addr v10, v15

    add-float v11, v11, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x3

    const/4 v12, 0x0

    if-ge v4, v2, :cond_5

    const/4 v2, 0x2

    if-ne v4, v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_3

    add-int/lit8 v2, v2, 0x14

    :cond_3
    iget-object v4, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a:[F

    aget v4, v4, v2

    sub-float v4, v1, v4

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->b:[F

    aget v0, v0, v2

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v12

    :cond_5
    mul-float v0, v5, v5

    int-to-float v1, v4

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    mul-float v2, v5, v9

    div-float/2addr v2, v1

    sub-float/2addr v7, v2

    mul-float/2addr v5, v6

    div-float/2addr v5, v1

    sub-float/2addr v10, v5

    mul-float/2addr v9, v6

    div-float/2addr v9, v1

    sub-float/2addr v8, v9

    mul-float/2addr v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v11, v6

    mul-float/2addr v0, v11

    mul-float v1, v10, v10

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v3

    if-nez v1, :cond_6

    return-object v12

    :cond_6
    mul-float/2addr v7, v11

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    div-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMotionEvent(Landroid/view/MotionEvent;I)Ljava/lang/Float;
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->e:I

    invoke-virtual {p1, v3, p2, v1}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    long-to-float v1, v1

    iget v2, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->e:I

    invoke-virtual {p1, v2, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/zui/quickstep/util/MotionPauseDetector$a;->a(FF)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/util/MotionPauseDetector$a;->b(I)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->d:I

    iput v0, p0, Lcom/zui/quickstep/util/MotionPauseDetector$a;->c:I

    return-void
.end method

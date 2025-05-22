.class public Lcom/zui/launcher/touch/TouchEventTranslator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/TouchEventTranslator$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/touch/TouchEventTranslator$a;

.field private final b:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/touch/TouchEventTranslator$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/MotionEvent$PointerProperties;",
            "[",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/touch/TouchEventTranslator$a;-><init>(Lcom/zui/launcher/touch/TouchEventTranslator;JFF)V

    iput-object v6, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->a:Lcom/zui/launcher/touch/TouchEventTranslator$a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->e:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->b:Ljava/util/function/Consumer;

    return-void
.end method

.method private a(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eq p2, p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_1

    const-string p1, "Finger does not exist"

    goto :goto_1

    :cond_1
    const-string p1, "Finger already exists"

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private b(IJLandroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/touch/TouchEventTranslator;->d()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    iget-wide v3, v2, Lcom/zui/launcher/touch/TouchEventTranslator$a;->a:J

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, [Landroid/view/MotionEvent$PointerProperties;

    array-length v8, v5

    move-object v9, v2

    check-cast v9, [Landroid/view/MotionEvent$PointerProperties;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    move-wide/from16 v5, p2

    move/from16 v7, p1

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v0, Lcom/zui/launcher/touch/TouchEventTranslator;->b:Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_0
    const-string v2, "TouchEventTranslatorgenerateEvent"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/touch/TouchEventTranslator;->printSamples(Ljava/lang/String;Landroid/view/MotionEvent;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found in MotionEvent"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(ILandroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zui/launcher/touch/TouchEventTranslator;->b(IJLandroid/view/MotionEvent;)V

    return-void
.end method

.method private d()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[",
            "Landroid/view/MotionEvent$PointerProperties;",
            "[",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Landroid/view/MotionEvent$PointerProperties;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    aget-object v7, v2, v3

    iput v5, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v5, 0x1

    iput v5, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v7, v2, v4

    aget-object v7, v1, v3

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iput v6, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aput-object v7, v1, v4

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method private e(IIFFLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/TouchEventTranslator;->a(IZ)V

    iget-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1, p2, p5}, Lcom/zui/launcher/touch/TouchEventTranslator;->f(IILandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    return-object p0
.end method

.method private f(IILandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/TouchEventTranslator;->a(IZ)V

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 v0, p2, 0x6

    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/zui/launcher/touch/TouchEventTranslator;->c(ILandroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method private g(IIFFJLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/TouchEventTranslator;->a(IZ)V

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iget-object p3, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    new-array p3, p1, [Landroid/view/MotionEvent$PointerProperties;

    new-array p4, p1, [Landroid/view/MotionEvent$PointerCoords;

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_1

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, p3, v2

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->e:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    shl-int/lit8 p1, p2, 0x8

    or-int/lit8 v0, p1, 0x5

    :goto_2
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/zui/launcher/touch/TouchEventTranslator;->b(IJLandroid/view/MotionEvent;)V

    return-object p0
.end method

.method private h(IIFFLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 8

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/touch/TouchEventTranslator;->g(IIFFJLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    return-object p0
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->c(ILandroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public dispatchDownEvents(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    iget-wide v6, v1, Lcom/zui/launcher/touch/TouchEventTranslator$a;->a:J

    move-object v1, p0

    move v3, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/touch/TouchEventTranslator;->g(IIFFJLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDownX()F
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    iget p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator$a;->b:F

    return p0
.end method

.method public getDownY()F
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    iget p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator$a;->c:F

    return p0
.end method

.method public position(IFF)Lcom/zui/launcher/touch/TouchEventTranslator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/TouchEventTranslator;->a(IZ)V

    iget-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-object p0
.end method

.method public printSamples(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 6

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "%s %s"

    invoke-virtual {p0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "#%d/%d"

    invoke-virtual {p1, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, " t=%d:"

    invoke-virtual {p1, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move p1, v2

    :goto_0
    if-ge p1, p0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "  id=%d: (%f,%f)"

    invoke-virtual {v1, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->a:Lcom/zui/launcher/touch/TouchEventTranslator$a;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    iget v1, v1, Lcom/zui/launcher/touch/TouchEventTranslator$a;->c:F

    sub-float v4, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const-string v0, "TouchEventTranslator"

    const-string v1, "Didn\'t process "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->printSamples(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/zui/launcher/touch/TouchEventTranslator;->position(IFF)Lcom/zui/launcher/touch/TouchEventTranslator;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/touch/TouchEventTranslator;->h(IIFFLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->cancel(Landroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/zui/launcher/touch/TouchEventTranslator;->position(IFF)Lcom/zui/launcher/touch/TouchEventTranslator;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/touch/TouchEventTranslator;->c(ILandroid/view/MotionEvent;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/touch/TouchEventTranslator;->e(IIFFLandroid/view/MotionEvent;)Lcom/zui/launcher/touch/TouchEventTranslator;

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public setDownParameters(ILandroid/view/MotionEvent;)V
    .locals 7

    new-instance v6, Lcom/zui/launcher/touch/TouchEventTranslator$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/touch/TouchEventTranslator$a;-><init>(Lcom/zui/launcher/touch/TouchEventTranslator;JFF)V

    iget-object p0, p0, Lcom/zui/launcher/touch/TouchEventTranslator;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.class public Lcom/amap/api/col/l3s/au;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/au$a;
    }
.end annotation


# instance fields
.field private A:I

.field private final a:Landroid/content/Context;

.field private final b:Lcom/amap/api/col/l3s/au$a;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private final r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/au$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->z:I

    iput v0, p0, Lcom/amap/api/col/l3s/au;->A:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/amap/api/col/l3s/au;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/au;->r:F

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private a(Landroid/view/MotionEvent;II)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p3, :cond_0

    if-eq v1, p2, :cond_0

    iget v2, p0, Lcom/amap/api/col/l3s/au;->r:F

    iget v3, p0, Lcom/amap/api/col/l3s/au;->s:F

    iget v4, p0, Lcom/amap/api/col/l3s/au;->t:F

    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpl-float v7, v5, v2

    if-ltz v7, :cond_0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_0

    cmpg-float v2, v6, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 13

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/au;->e:Landroid/view/MotionEvent;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/au;->l:F

    iput v0, p0, Lcom/amap/api/col/l3s/au;->m:F

    iput v0, p0, Lcom/amap/api/col/l3s/au;->n:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    iget v1, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    iget v4, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    sub-float/2addr v11, v9

    sub-float/2addr v12, v10

    iput v7, p0, Lcom/amap/api/col/l3s/au;->h:F

    iput v8, p0, Lcom/amap/api/col/l3s/au;->i:F

    iput v11, p0, Lcom/amap/api/col/l3s/au;->j:F

    iput v12, p0, Lcom/amap/api/col/l3s/au;->k:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    iput v9, p0, Lcom/amap/api/col/l3s/au;->f:F

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    iput v10, p0, Lcom/amap/api/col/l3s/au;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/amap/api/col/l3s/au;->q:J

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/amap/api/col/l3s/au;->o:F

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3s/au;->p:F

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/au;->v:Z

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/au;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    :cond_3
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/au;->e:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/au;->u:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/au;->c:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/l3s/au;->w:I

    iput v1, p0, Lcom/amap/api/col/l3s/au;->x:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/au;->v:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/au;->e:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/au;->z:I

    iput p2, p0, Lcom/amap/api/col/l3s/au;->A:I

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/au;->j()V

    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/au;->v:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto/16 :goto_1b

    :cond_1
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/au;->c:Z

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-nez v1, :cond_23

    if-eqz v0, :cond_22

    if-eq v0, v3, :cond_33

    const/high16 v1, -0x40800000    # -1.0f

    if-eq v0, v8, :cond_18

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_2

    goto/16 :goto_1a

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/au;->u:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-le v0, v8, :cond_5

    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    if-ne v4, v0, :cond_4

    iget v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_34

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/au;->w:I

    goto/16 :goto_1a

    :cond_4
    iget v2, p0, Lcom/amap/api/col/l3s/au;->x:I

    if-ne v4, v2, :cond_34

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_34

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/au;->x:I

    goto/16 :goto_1a

    :cond_5
    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    if-ne v4, v0, :cond_6

    iget v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/au;->v:Z

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/au;->c:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/au;->w:I

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/au;->y:Z

    iput v6, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto/16 :goto_f

    :cond_9
    iget v0, p0, Lcom/amap/api/col/l3s/au;->z:I

    if-eqz v0, :cond_b

    iget v4, p0, Lcom/amap/api/col/l3s/au;->A:I

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    int-to-float v0, v0

    iget v5, p0, Lcom/amap/api/col/l3s/au;->r:F

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/amap/api/col/l3s/au;->s:F

    int-to-float v0, v4

    goto :goto_2

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/amap/api/col/l3s/au;->r:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/amap/api/col/l3s/au;->s:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    :goto_2
    sub-float/2addr v0, v5

    iput v0, p0, Lcom/amap/api/col/l3s/au;->t:F

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amap/api/col/l3s/au;->q:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget v4, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3s/au;->x:I

    if-ltz v4, :cond_d

    if-ne v4, v0, :cond_11

    :cond_d
    if-ne v4, v0, :cond_e

    goto :goto_3

    :cond_e
    iget v6, p0, Lcom/amap/api/col/l3s/au;->x:I

    :goto_3
    invoke-direct {p0, p1, v6, v4}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3s/au;->w:I

    goto :goto_4

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget v4, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3s/au;->x:I

    goto :goto_4

    :cond_10
    move v0, v2

    move v4, v0

    :cond_11
    :goto_4
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/au;->y:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    iget v5, p0, Lcom/amap/api/col/l3s/au;->r:F

    iget v6, p0, Lcom/amap/api/col/l3s/au;->s:F

    iget v7, p0, Lcom/amap/api/col/l3s/au;->t:F

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move-result v9

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    move-result v10

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v5

    if-ltz v12, :cond_13

    cmpg-float v12, v9, v5

    if-ltz v12, :cond_13

    cmpl-float v8, v8, v6

    if-gtz v8, :cond_13

    cmpl-float v8, v9, v7

    if-lez v8, :cond_12

    goto :goto_5

    :cond_12
    move v8, v2

    goto :goto_6

    :cond_13
    :goto_5
    move v8, v3

    :goto_6
    cmpg-float v9, v10, v5

    if-ltz v9, :cond_15

    cmpg-float v5, v11, v5

    if-ltz v5, :cond_15

    cmpl-float v5, v10, v6

    if-gtz v5, :cond_15

    cmpl-float v5, v11, v7

    if-lez v5, :cond_14

    goto :goto_7

    :cond_14
    move v5, v2

    goto :goto_8

    :cond_15
    :goto_7
    move v5, v3

    :goto_8
    if-eqz v8, :cond_16

    if-eqz v5, :cond_16

    iput v1, p0, Lcom/amap/api/col/l3s/au;->f:F

    iput v1, p0, Lcom/amap/api/col/l3s/au;->g:F

    goto :goto_a

    :cond_16
    if-eqz v8, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    :goto_9
    iput p1, p0, Lcom/amap/api/col/l3s/au;->g:F

    :goto_a
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/au;->u:Z

    goto/16 :goto_1a

    :cond_17
    if-eqz v5, :cond_21

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_9

    :cond_18
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/au;->u:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/amap/api/col/l3s/au;->r:F

    iget v4, p0, Lcom/amap/api/col/l3s/au;->s:F

    iget v5, p0, Lcom/amap/api/col/l3s/au;->t:F

    iget v6, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    iget v7, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    invoke-static {p1, v6}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-static {p1, v6}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move-result v9

    invoke-static {p1, v7}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    move-result v10

    invoke-static {p1, v7}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v0

    if-ltz v12, :cond_1a

    cmpg-float v12, v9, v0

    if-ltz v12, :cond_1a

    cmpl-float v8, v8, v4

    if-gtz v8, :cond_1a

    cmpl-float v8, v9, v5

    if-lez v8, :cond_19

    goto :goto_b

    :cond_19
    move v8, v2

    goto :goto_c

    :cond_1a
    :goto_b
    move v8, v3

    :goto_c
    cmpg-float v9, v10, v0

    if-ltz v9, :cond_1c

    cmpg-float v0, v11, v0

    if-ltz v0, :cond_1c

    cmpl-float v0, v10, v4

    if-gtz v0, :cond_1c

    cmpl-float v0, v11, v5

    if-lez v0, :cond_1b

    goto :goto_d

    :cond_1b
    move v0, v2

    goto :goto_e

    :cond_1c
    :goto_d
    move v0, v3

    :goto_e
    if-eqz v8, :cond_1d

    iget v4, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-direct {p0, p1, v4, v6}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v4

    if-ltz v4, :cond_1d

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move v8, v2

    move v6, v4

    :cond_1d
    if-eqz v0, :cond_1e

    iget v4, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-direct {p0, p1, v4, v7}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v4

    if-ltz v4, :cond_1e

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;I)F

    invoke-static {p1, v4}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;I)F

    move v0, v2

    move v7, v4

    :cond_1e
    if-eqz v8, :cond_1f

    if-eqz v0, :cond_1f

    iput v1, p0, Lcom/amap/api/col/l3s/au;->f:F

    iput v1, p0, Lcom/amap/api/col/l3s/au;->g:F

    goto/16 :goto_1a

    :cond_1f
    if-eqz v8, :cond_20

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    :goto_f
    iput p1, p0, Lcom/amap/api/col/l3s/au;->g:F

    goto/16 :goto_1a

    :cond_20
    if-eqz v0, :cond_21

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_f

    :cond_21
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/au;->u:Z

    goto/16 :goto_18

    :cond_22
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/au;->w:I

    :goto_10
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/au;->y:Z

    goto/16 :goto_1a

    :cond_23
    if-eq v0, v3, :cond_33

    if-eq v0, v8, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    if-eq v0, v5, :cond_2b

    if-eq v0, v4, :cond_24

    goto/16 :goto_1a

    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_11

    :cond_25
    move v1, v2

    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-le v0, v8, :cond_29

    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    if-ne v4, v0, :cond_27

    iget v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {v1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/au;->y:Z

    :goto_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/au$a;->b(Lcom/amap/api/col/l3s/au;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/au;->c:Z

    goto :goto_13

    :cond_26
    move v2, v3

    goto :goto_13

    :cond_27
    iget v5, p0, Lcom/amap/api/col/l3s/au;->x:I

    if-ne v4, v5, :cond_28

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {v1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/au;->y:Z

    goto :goto_12

    :cond_28
    :goto_13
    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    goto :goto_14

    :cond_29
    move v2, v3

    :goto_14
    if-eqz v2, :cond_34

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    if-ne v4, v0, :cond_2a

    iget v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/amap/api/col/l3s/au;->f:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/au;->g:F

    iget-object p1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3s/au;->j()V

    iput v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    goto/16 :goto_10

    :cond_2b
    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    iget v1, p0, Lcom/amap/api/col/l3s/au;->x:I

    invoke-direct {p0}, Lcom/amap/api/col/l3s/au;->j()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    iget-boolean v4, p0, Lcom/amap/api/col/l3s/au;->y:Z

    if-eqz v4, :cond_2c

    goto :goto_15

    :cond_2c
    move v0, v1

    :goto_15
    iput v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    goto :goto_16

    :cond_2d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    :goto_16
    iput v0, p0, Lcom/amap/api/col/l3s/au;->x:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/au;->y:Z

    iget v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_2e

    iget v1, p0, Lcom/amap/api/col/l3s/au;->w:I

    iget v2, p0, Lcom/amap/api/col/l3s/au;->x:I

    if-ne v1, v2, :cond_30

    :cond_2e
    iget v1, p0, Lcom/amap/api/col/l3s/au;->w:I

    iget v2, p0, Lcom/amap/api/col/l3s/au;->x:I

    if-ne v1, v2, :cond_2f

    goto :goto_17

    :cond_2f
    move v6, v2

    :goto_17
    invoke-direct {p0, p1, v6, v0}, Lcom/amap/api/col/l3s/au;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/au;->w:I

    :cond_30
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    :goto_18
    iget-object p1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/au$a;->b(Lcom/amap/api/col/l3s/au;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/au;->c:Z

    goto :goto_1a

    :cond_31
    iget-object p1, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/au$a;->c(Lcom/amap/api/col/l3s/au;)V

    goto :goto_19

    :cond_32
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/au;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/amap/api/col/l3s/au;->o:F

    iget v1, p0, Lcom/amap/api/col/l3s/au;->p:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->b:Lcom/amap/api/col/l3s/au$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/au$a;->a(Lcom/amap/api/col/l3s/au;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/au;->d:Landroid/view/MotionEvent;

    goto :goto_1a

    :cond_33
    :goto_19
    invoke-direct {p0}, Lcom/amap/api/col/l3s/au;->j()V

    :cond_34
    :goto_1a
    move v2, v3

    :goto_1b
    return v2
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->f:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->g:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->j:F

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->k:F

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->h:F

    return p0
.end method

.method public final g()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/au;->i:F

    return p0
.end method

.method public final h()F
    .locals 4

    iget v0, p0, Lcom/amap/api/col/l3s/au;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/l3s/au;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3s/au;->j:F

    iget v2, p0, Lcom/amap/api/col/l3s/au;->k:F

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/au;->l:F

    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3s/au;->l:F

    iget v2, p0, Lcom/amap/api/col/l3s/au;->m:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3s/au;->h:F

    iget v2, p0, Lcom/amap/api/col/l3s/au;->i:F

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/amap/api/col/l3s/au;->m:F

    :cond_1
    iget v1, p0, Lcom/amap/api/col/l3s/au;->m:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/au;->n:F

    :cond_2
    iget p0, p0, Lcom/amap/api/col/l3s/au;->n:F

    return p0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/au;->q:J

    return-wide v0
.end method

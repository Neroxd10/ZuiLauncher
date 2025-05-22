.class public final Lcom/amap/api/col/l3s/aw;
.super Lcom/amap/api/col/l3s/aq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/aw$b;,
        Lcom/amap/api/col/l3s/aw$a;
    }
.end annotation


# static fields
.field private static final p:Landroid/graphics/PointF;


# instance fields
.field private final n:Lcom/amap/api/col/l3s/aw$a;

.field private o:Z

.field private q:Landroid/graphics/PointF;

.field private r:Landroid/graphics/PointF;

.field private s:Landroid/graphics/PointF;

.field private t:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/aw;->p:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/aw$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/aq;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/aw;->s:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/aw;->t:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/amap/api/col/l3s/aw;->n:Lcom/amap/api/col/l3s/aw$a;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/amap/api/col/l3s/ar;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/aw;->o:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/aw;->s:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/amap/api/col/l3s/aw;->t:Landroid/graphics/PointF;

    iput v1, p0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iput v1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected final a(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/aw;->a(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/aw;->o:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/aw;->n:Lcom/amap/api/col/l3s/aw$a;

    invoke-interface {p1, p0}, Lcom/amap/api/col/l3s/aw$a;->a(Lcom/amap/api/col/l3s/aw;)V

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aw;->a()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aw;->a()V

    :goto_0
    return-void
.end method

.method protected final a(ILandroid/view/MotionEvent;II)V
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/aw;->a()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ar;->k:J

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/aw;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/amap/api/col/l3s/aq;->a(Landroid/view/MotionEvent;II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/aw;->o:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ar;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/amap/api/col/l3s/aq;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/aw;->q:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ar;->b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/aw;->r:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ar;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/amap/api/col/l3s/aw;->p:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/amap/api/col/l3s/aw;->q:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amap/api/col/l3s/aw;->r:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object p1, p0, Lcom/amap/api/col/l3s/aw;->t:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/amap/api/col/l3s/aw;->s:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final d()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aw;->s:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0
.end method

.method public final e()F
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/aw;->s:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    return p0
.end method

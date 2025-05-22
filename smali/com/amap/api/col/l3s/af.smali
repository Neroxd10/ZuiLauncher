.class public final Lcom/amap/api/col/l3s/af;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3s/af;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3s/af;->e:F

    iput v1, p0, Lcom/amap/api/col/l3s/af;->f:F

    iput v0, p0, Lcom/amap/api/col/l3s/af;->g:F

    iput v0, p0, Lcom/amap/api/col/l3s/af;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/af;->i:Z

    iput v1, p0, Lcom/amap/api/col/l3s/af;->j:F

    iput v1, p0, Lcom/amap/api/col/l3s/af;->k:F

    iput v1, p0, Lcom/amap/api/col/l3s/af;->l:F

    iput v1, p0, Lcom/amap/api/col/l3s/af;->m:F

    iput v0, p0, Lcom/amap/api/col/l3s/af;->n:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/af;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput p2, p0, Lcom/amap/api/col/l3s/af;->c:I

    invoke-static {}, Lcom/amap/api/col/l3s/ep;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/af;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/amap/api/col/l3s/af;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    iget-object v0, p0, Lcom/amap/api/col/l3s/af;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/amap/api/col/l3s/af;->d:F

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->l:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->c:I

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/af;->i:Z

    return p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/af;->i:Z

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->m:F

    return-void
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->l:F

    return p0
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->j:F

    return-void
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->m:F

    return p0
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->k:F

    return-void
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->j:F

    return p0
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->f:F

    return-void
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->k:F

    return p0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->e:F

    return-void
.end method

.method public final g()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->f:F

    return p0
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->g:F

    return-void
.end method

.method public final h()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->e:F

    return p0
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/af;->h:F

    return-void
.end method

.method public final i()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->g:F

    return p0
.end method

.method public final j()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->h:F

    return p0
.end method

.method public final k()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/af;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->c:I

    return p0
.end method

.method public final m()F
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->d:F

    return p0
.end method

.method public final n()V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/af;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/af;->n:I

    return-void
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3s/af;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3s/af;->n:I

    return-void
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/af;->n:I

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/af;->a:Ljava/lang/String;

    return-object p0
.end method

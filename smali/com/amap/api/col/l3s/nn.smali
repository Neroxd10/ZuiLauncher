.class public Lcom/amap/api/col/l3s/nn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:D

.field public e:D

.field public f:D

.field public g:F

.field public h:F

.field public i:F

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/nn;->b:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/nn;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/nn;->d:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/nn;->e:D

    iput-wide v0, p0, Lcom/amap/api/col/l3s/nn;->f:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/nn;->g:F

    iput v0, p0, Lcom/amap/api/col/l3s/nn;->h:F

    iput v0, p0, Lcom/amap/api/col/l3s/nn;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/nn;->j:Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/nn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/nn;)D
    .locals 8

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/l3s/nn;->e:D

    iget-wide v2, p0, Lcom/amap/api/col/l3s/nn;->d:D

    iget-wide v4, p1, Lcom/amap/api/col/l3s/nn;->e:D

    iget-wide v6, p1, Lcom/amap/api/col/l3s/nn;->d:D

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3s/nx;->a(DDDD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

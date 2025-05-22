.class public final Lcom/amap/api/col/l3s/eb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amap/api/col/l3s/eb;->a:D

    iput-wide p5, p0, Lcom/amap/api/col/l3s/eb;->b:D

    iput-wide p3, p0, Lcom/amap/api/col/l3s/eb;->c:D

    iput-wide p7, p0, Lcom/amap/api/col/l3s/eb;->d:D

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    iput-wide p1, p0, Lcom/amap/api/col/l3s/eb;->e:D

    add-double/2addr p5, p7

    div-double/2addr p5, p3

    iput-wide p5, p0, Lcom/amap/api/col/l3s/eb;->f:D

    return-void
.end method


# virtual methods
.method public final a(DD)Z
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/eb;->a:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/l3s/eb;->c:D

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    iget-wide p1, p0, Lcom/amap/api/col/l3s/eb;->b:D

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_0

    iget-wide p0, p0, Lcom/amap/api/col/l3s/eb;->d:D

    cmpg-double p0, p3, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lcom/amap/api/col/l3s/eb;)Z
    .locals 10

    iget-wide v0, p1, Lcom/amap/api/col/l3s/eb;->a:D

    iget-wide v2, p1, Lcom/amap/api/col/l3s/eb;->c:D

    iget-wide v4, p1, Lcom/amap/api/col/l3s/eb;->b:D

    iget-wide v6, p1, Lcom/amap/api/col/l3s/eb;->d:D

    iget-wide v8, p0, Lcom/amap/api/col/l3s/eb;->c:D

    cmpg-double p1, v0, v8

    if-gez p1, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/l3s/eb;->a:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/l3s/eb;->d:D

    cmpg-double p1, v4, v0

    if-gez p1, :cond_0

    iget-wide p0, p0, Lcom/amap/api/col/l3s/eb;->b:D

    cmpg-double p0, p0, v6

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

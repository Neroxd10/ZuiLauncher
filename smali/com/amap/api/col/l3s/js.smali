.class public final Lcom/amap/api/col/l3s/js;
.super Lcom/amap/api/col/l3s/ma;
.source ""


# static fields
.field private static g:I = 0x989680


# instance fields
.field protected a:I

.field protected b:J

.field private d:Z

.field private e:Z

.field private f:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLcom/amap/api/col/l3s/ma;JI)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/ma;-><init>(Lcom/amap/api/col/l3s/ma;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/js;->d:Z

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/js;->e:Z

    sget p2, Lcom/amap/api/col/l3s/js;->g:I

    iput p2, p0, Lcom/amap/api/col/l3s/js;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/js;->h:J

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/js;->d:Z

    const p1, 0x927c0

    iput p1, p0, Lcom/amap/api/col/l3s/js;->a:I

    iput-wide p3, p0, Lcom/amap/api/col/l3s/js;->h:J

    iput p5, p0, Lcom/amap/api/col/l3s/js;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const p0, 0x4e200

    return p0
.end method

.method public final a(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/col/l3s/js;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/l3s/js;->h:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/js;->e:Z

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/js;->h:J

    return-wide v0
.end method

.method protected final c()Z
    .locals 9

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/js;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/js;->h:J

    iget v0, p0, Lcom/amap/api/col/l3s/js;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/js;->d:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lcom/amap/api/col/l3s/js;->h:J

    iget v0, p0, Lcom/amap/api/col/l3s/js;->f:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    return v2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/api/col/l3s/js;->b:J

    sub-long v5, v3, v5

    iget v0, p0, Lcom/amap/api/col/l3s/js;->a:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    return v2

    :cond_3
    iput-wide v3, p0, Lcom/amap/api/col/l3s/js;->b:J

    return v1
.end method

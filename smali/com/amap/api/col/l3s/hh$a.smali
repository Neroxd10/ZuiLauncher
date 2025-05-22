.class final Lcom/amap/api/col/l3s/hh$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:I

.field private d:D


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/hh$a;->a:Z

    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hh$a;->b:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/col/l3s/hh$a;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/hh$a;->d:D

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/hh$a;->d:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/hh$a;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/hh$a;->b:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/hh$a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/hh$a;->a:Z

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/hh$a;->b:J

    return-wide v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/hh$a;->c:I

    return p0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/hh$a;->d:D

    return-wide v0
.end method

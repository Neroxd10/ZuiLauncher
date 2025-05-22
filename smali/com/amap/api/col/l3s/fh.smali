.class public Lcom/amap/api/col/l3s/fh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fh$c;,
        Lcom/amap/api/col/l3s/fh$b;,
        Lcom/amap/api/col/l3s/fh$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/fh$b;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/fh$b;

    new-instance v1, Lcom/amap/api/col/l3s/fh$c;

    const/4 v2, 0x0

    const/16 v3, 0x200

    const/16 v4, 0x400

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/fh$b;-><init>(Lcom/amap/api/col/l3s/fh;Lcom/amap/api/col/l3s/fh$c;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fh;->a:Lcom/amap/api/col/l3s/fh$b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh;->a:Lcom/amap/api/col/l3s/fh$b;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget p0, p0, Lcom/amap/api/col/l3s/fh$c;->c:I

    return p0
.end method

.method public final a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$c;
    .locals 1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh;->a:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3s/fh$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3s/fh$b;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/amap/api/col/l3s/fh$c;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget p2, p0, Lcom/amap/api/col/l3s/fh$c;->a:I

    iget p3, p0, Lcom/amap/api/col/l3s/fh$c;->b:I

    iget v0, p0, Lcom/amap/api/col/l3s/fh$c;->c:I

    iget p0, p0, Lcom/amap/api/col/l3s/fh$c;->d:I

    invoke-direct {p1, p2, p3, v0, p0}, Lcom/amap/api/col/l3s/fh$c;-><init>(IIII)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh;->a:Lcom/amap/api/col/l3s/fh$b;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fh$b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh;->a:Lcom/amap/api/col/l3s/fh$b;

    iget-object p0, p0, Lcom/amap/api/col/l3s/fh$b;->b:Lcom/amap/api/col/l3s/fh$c;

    iget p0, p0, Lcom/amap/api/col/l3s/fh$c;->d:I

    return p0
.end method

.class public Lcom/amap/api/col/l3s/ky;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/ky$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/la;

.field private b:Lcom/amap/api/col/l3s/ld;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3s/ld;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/ky;-><init>(Lcom/amap/api/col/l3s/ld;B)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3s/ld;B)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3s/ky;-><init>(Lcom/amap/api/col/l3s/ld;JJZ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3s/ld;JJZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    iget-object p1, p1, Lcom/amap/api/col/l3s/ld;->c:Ljava/net/Proxy;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3s/la;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    iget v2, v1, Lcom/amap/api/col/l3s/ld;->a:I

    iget v1, v1, Lcom/amap/api/col/l3s/ld;->b:I

    invoke-direct {v0, v2, v1, p1, p6}, Lcom/amap/api/col/l3s/la;-><init>(IILjava/net/Proxy;Z)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ky;->a:Lcom/amap/api/col/l3s/la;

    invoke-virtual {v0, p4, p5}, Lcom/amap/api/col/l3s/la;->b(J)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/ky;->a:Lcom/amap/api/col/l3s/la;

    invoke-virtual {p0, p2, p3}, Lcom/amap/api/col/l3s/la;->a(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ky;->a:Lcom/amap/api/col/l3s/la;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/la;->a()V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/ky$a;)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-static {v0}, Lcom/amap/api/col/l3s/la;->a(Lcom/amap/api/col/l3s/ld;)I

    move-result v10

    iget-object v1, p0, Lcom/amap/api/col/l3s/ky;->a:Lcom/amap/api/col/l3s/la;

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->getURL()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->isIPRequest()Z

    move-result v4

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->getIPDNSName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->getRequestHead()Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ld;->getParams()Ljava/util/Map;

    move-result-object v7

    iget-object p0, p0, Lcom/amap/api/col/l3s/ky;->b:Lcom/amap/api/col/l3s/ld;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ld;->getEntityBytes()[B

    move-result-object v8

    move-object v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/amap/api/col/l3s/la;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/col/l3s/ky$a;I)V

    return-void
.end method

.class final Lcom/amap/api/col/l3s/jl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/iy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/jl;->a()Lcom/amap/api/col/l3s/iy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3s/jl;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/jl;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/jl;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/jl$1;->a:Lcom/amap/api/col/l3s/jl;

    return-void
.end method


# virtual methods
.method public final a([BLjava/util/Map;)Lcom/amap/api/col/l3s/ld;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/col/l3s/ld;"
        }
    .end annotation

    new-instance p0, Lcom/amap/api/col/l3s/kv;

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/kv;-><init>([BLjava/util/Map;)V

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/amap/api/col/l3s/jl;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3s/jl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/jl$1;->a:Lcom/amap/api/col/l3s/jl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3s/jl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/amap/api/col/l3s/jl$1;->a:Lcom/amap/api/col/l3s/jl;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/jl;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

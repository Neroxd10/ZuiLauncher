.class public abstract Lcom/amap/api/col/l3s/fi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amap/api/col/l3s/fj<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/col/l3s/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/fj;)Lcom/amap/api/col/l3s/fj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    iget-object v2, p0, Lcom/amap/api/col/l3s/fi;->a:Lcom/amap/api/col/l3s/fj;

    iput-object v2, p1, Lcom/amap/api/col/l3s/fj;->f:Lcom/amap/api/col/l3s/fj;

    iput-object p1, p0, Lcom/amap/api/col/l3s/fi;->a:Lcom/amap/api/col/l3s/fj;

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

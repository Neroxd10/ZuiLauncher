.class Lcom/bumptech/glide/load/engine/Engine$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/f<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/Engine$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$a$a;->a:Lcom/bumptech/glide/load/engine/Engine$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/f;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$a$a;->a:Lcom/bumptech/glide/load/engine/Engine$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$a;->a:Lcom/bumptech/glide/load/engine/f$e;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/f;-><init>(Lcom/bumptech/glide/load/engine/f$e;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$a$a;->a()Lcom/bumptech/glide/load/engine/f;

    move-result-object p0

    return-object p0
.end method

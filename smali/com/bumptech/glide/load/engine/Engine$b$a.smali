.class Lcom/bumptech/glide/load/engine/Engine$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/Engine$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$b$a;->a:Lcom/bumptech/glide/load/engine/Engine$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lcom/bumptech/glide/load/engine/g;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$b$a;->a:Lcom/bumptech/glide/load/engine/Engine$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$b;->a:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$b;->b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$b;->c:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/Engine$b;->d:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$b;->e:Lcom/bumptech/glide/load/engine/h;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/Engine$b;->f:Landroidx/core/util/Pools$Pool;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/g;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/h;Landroidx/core/util/Pools$Pool;)V

    return-object v7
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$b$a;->a()Lcom/bumptech/glide/load/engine/g;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/bumptech/glide/load/engine/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/l;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/l;->a:Ljava/util/Map;

    :goto_0
    return-object p0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/l;->b(Z)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/g;

    return-object p0
.end method

.method c(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->k()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/l;->b(Z)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method d(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->k()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/l;->b(Z)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.class Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/f;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->e(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object p0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object p0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->g(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    return-void
.end method

.method private c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->e(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object p0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->g(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    return-void
.end method

.method private static e(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    return-void
.end method

.method private static g(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/f;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->a()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/engine/bitmap_recycle/f;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->a()V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    :goto_0
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->e(Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b:Ljava/util/Map;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->a()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/d$a;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

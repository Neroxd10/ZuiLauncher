.class Lcom/bumptech/glide/load/engine/f$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/Key;

.field private b:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/engine/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/m<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f$d;->a:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f$d;->b:Lcom/bumptech/glide/load/ResourceEncoder;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    return-void
.end method

.method b(Lcom/bumptech/glide/load/engine/f$e;Lcom/bumptech/glide/load/Options;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/f$e;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f$d;->a:Lcom/bumptech/glide/load/Key;

    new-instance v1, Lcom/bumptech/glide/load/engine/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f$d;->b:Lcom/bumptech/glide/load/ResourceEncoder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/m;->d()V

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/m;->d()V

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    throw p1
.end method

.method c()Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TX;>;",
            "Lcom/bumptech/glide/load/engine/m<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f$d;->a:Lcom/bumptech/glide/load/Key;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/f$d;->b:Lcom/bumptech/glide/load/ResourceEncoder;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/f$d;->c:Lcom/bumptech/glide/load/engine/m;

    return-void
.end method

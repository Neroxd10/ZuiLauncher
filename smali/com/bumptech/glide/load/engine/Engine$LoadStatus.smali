.class public Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadStatus"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/request/ResourceCallback;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->b:Lcom/bumptech/glide/request/ResourceCallback;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a:Lcom/bumptech/glide/load/engine/g;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a:Lcom/bumptech/glide/load/engine/g;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->b:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/g;->m(Lcom/bumptech/glide/request/ResourceCallback;)V

    return-void
.end method

.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->b:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->a:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public onSizeReady(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->a:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->b:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->a:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->b:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->b:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$a;

    :cond_1
    :goto_0
    return-void
.end method

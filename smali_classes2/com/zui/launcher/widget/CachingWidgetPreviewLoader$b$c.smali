.class final Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;
.super Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final b:Landroid/os/CancellationSignal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/CancellationSignal;Ljava/util/Set;)V
    .locals 1
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b;-><init>(Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$a;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    iput-object p2, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a(Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;
    .locals 2
    .param p1    # Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;-><init>(Landroid/os/CancellationSignal;Ljava/util/Set;)V

    return-object p1
.end method

.method b(Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;
    .locals 4
    .param p1    # Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;

    iget-object p0, p0, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;->b:Landroid/os/CancellationSignal;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader$b$c;-><init>(Landroid/os/CancellationSignal;Ljava/util/Set;)V

    return-object p1
.end method

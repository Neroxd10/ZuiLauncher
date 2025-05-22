.class public Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->b:Z

    iput-boolean p3, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->c:Z

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->d:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->c:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->b:Z

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->a:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;->d:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_4
    return-void
.end method

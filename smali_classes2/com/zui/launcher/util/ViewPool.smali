.class public Lcom/zui/launcher/util/ViewPool;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/ViewPool$Reusable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/zui/launcher/util/ViewPool$Reusable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/view/ViewGroup;

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/util/ViewPool;->e:I

    iput p3, p0, Lcom/zui/launcher/util/ViewPool;->d:I

    iput-object p2, p0, Lcom/zui/launcher/util/ViewPool;->c:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/ViewPool;->b:Landroid/view/LayoutInflater;

    new-array p1, p4, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/zui/launcher/util/ViewPool;->a:[Ljava/lang/Object;

    if-lez p5, :cond_0

    invoke-direct {p0, p5}, Lcom/zui/launcher/util/ViewPool;->c(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget v0, p0, Lcom/zui/launcher/util/ViewPool;->e:I

    iget-object v1, p0, Lcom/zui/launcher/util/ViewPool;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/util/ViewPool;->e:I

    return-void
.end method

.method private b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lcom/zui/launcher/util/ViewPool;->d:I

    iget-object p0, p0, Lcom/zui/launcher/util/ViewPool;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/util/ViewPool;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/zui/launcher/util/d0;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/zui/launcher/util/d0;-><init>(Lcom/zui/launcher/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    const-string p0, "ViewPool-init"

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/ViewPool;->a(Landroid/view/View;)V

    return-void
.end method

.method public synthetic e(ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-direct {p0, p2}, Lcom/zui/launcher/util/ViewPool;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/util/e0;

    invoke-direct {v2, p0, v1}, Lcom/zui/launcher/util/e0;-><init>(Lcom/zui/launcher/util/ViewPool;Landroid/view/View;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget v0, p0, Lcom/zui/launcher/util/ViewPool;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/util/ViewPool;->e:I

    iget-object p0, p0, Lcom/zui/launcher/util/ViewPool;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/ViewPool;->b:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0}, Lcom/zui/launcher/util/ViewPool;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public recycle(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/util/ViewPool$Reusable;

    invoke-interface {v0}, Lcom/zui/launcher/util/ViewPool$Reusable;->onRecycle()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/ViewPool;->a(Landroid/view/View;)V

    return-void
.end method

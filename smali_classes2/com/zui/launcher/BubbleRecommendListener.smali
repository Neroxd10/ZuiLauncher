.class public Lcom/zui/launcher/BubbleRecommendListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/WorkspaceItemInfo$b;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/WorkspaceIconCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/WorkspaceIconCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceIconCompat;->isActive()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRecommendStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BubbleRecommendListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceIconCompat;->doUpdateRecommendStatus()V

    :cond_0
    return-void
.end method

.method public refreshIcon()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/BubbleRecommendListener$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/BubbleRecommendListener$b;-><init>(Lcom/zui/launcher/BubbleRecommendListener;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/BubbleRecommendListener$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/BubbleRecommendListener$a;-><init>(Lcom/zui/launcher/BubbleRecommendListener;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

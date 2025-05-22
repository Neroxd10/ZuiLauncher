.class Lcom/zui/launcher/BubbleRecommendListener$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/BubbleRecommendListener;->replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Lcom/zui/launcher/icons/IconCache;

.field final synthetic c:Lcom/zui/launcher/BubbleRecommendListener;


# direct methods
.method constructor <init>(Lcom/zui/launcher/BubbleRecommendListener;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->c:Lcom/zui/launcher/BubbleRecommendListener;

    iput-object p2, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->b:Lcom/zui/launcher/icons/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->c:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {v0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->c:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {v0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->c:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {v0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    iget-object v1, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/BubbleRecommendListener$a;->b:Lcom/zui/launcher/icons/IconCache;

    invoke-interface {v0, v1, p0}, Lcom/zui/launcher/WorkspaceIconCompat;->replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V

    :cond_0
    return-void
.end method

.class Lcom/zui/launcher/BubbleRecommendListener$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/BubbleRecommendListener;->refreshIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/BubbleRecommendListener;


# direct methods
.method constructor <init>(Lcom/zui/launcher/BubbleRecommendListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/BubbleRecommendListener$b;->a:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener$b;->a:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {v0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BubbleRecommendListener$b;->a:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {v0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/BubbleRecommendListener$b;->a:Lcom/zui/launcher/BubbleRecommendListener;

    invoke-static {p0}, Lcom/zui/launcher/BubbleRecommendListener;->a(Lcom/zui/launcher/BubbleRecommendListener;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p0}, Lcom/zui/launcher/WorkspaceIconCompat;->refreshIcon()V

    :cond_0
    return-void
.end method

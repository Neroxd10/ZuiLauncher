.class Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    iget v1, v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->i:I

    iget-object v2, v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->j:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    iget-object v3, v2, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->j:[I

    iget v2, v2, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->i:I

    aget v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    iget v1, v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->i:I

    invoke-static {v0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$a;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->onDraggingCompleted()V

    :goto_0
    return-void
.end method

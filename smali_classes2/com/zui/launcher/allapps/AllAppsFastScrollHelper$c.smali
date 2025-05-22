.class Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;
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

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->b(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0, v1}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->c(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->d(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper$c;->a:Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;->a(Lcom/zui/launcher/allapps/AllAppsFastScrollHelper;)Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->onDraggingCompleted()V

    return-void
.end method

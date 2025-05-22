.class Lcom/zui/launcher/DownloadSpan$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->checknetwokAndresumeTask(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$b;->c:Lcom/zui/launcher/DownloadSpan;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionByNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$b;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$b;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/DownloadSpan$b$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/DownloadSpan$b$a;-><init>(Lcom/zui/launcher/DownloadSpan$b;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

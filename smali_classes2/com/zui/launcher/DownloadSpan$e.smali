.class Lcom/zui/launcher/DownloadSpan$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->o0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/ItemInfo;

.field final synthetic c:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$e;->b:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkAvailable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$e;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/DownloadSpan$e$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/DownloadSpan$e$a;-><init>(Lcom/zui/launcher/DownloadSpan$e;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

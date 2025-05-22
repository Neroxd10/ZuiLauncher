.class Lcom/zui/launcher/DownloadSpan$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->C(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$h;->c:Lcom/zui/launcher/DownloadSpan;

    iput-boolean p2, p0, Lcom/zui/launcher/DownloadSpan$h;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionByNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->isWifiOn(Landroid/net/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$h;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$h;->c:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/DownloadSpan$h$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadSpan$h$a;-><init>(Lcom/zui/launcher/DownloadSpan$h;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

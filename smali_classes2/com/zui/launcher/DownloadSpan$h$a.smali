.class Lcom/zui/launcher/DownloadSpan$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan$h;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadSpan$h;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan$h;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$h$a;->a:Lcom/zui/launcher/DownloadSpan$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$h$a;->a:Lcom/zui/launcher/DownloadSpan$h;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$h;->c:Lcom/zui/launcher/DownloadSpan;

    iget-boolean v1, p0, Lcom/zui/launcher/DownloadSpan$h;->a:Z

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$h;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/zui/launcher/DownloadSpan;->l(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V

    return-void
.end method

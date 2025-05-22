.class Lcom/zui/launcher/DownloadSpan$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan$k;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadSpan$k;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan$k;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$k$a;->a:Lcom/zui/launcher/DownloadSpan$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$k$a;->a:Lcom/zui/launcher/DownloadSpan$k;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$k;->a:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan;->q(Lcom/zui/launcher/DownloadSpan;)V

    return-void
.end method

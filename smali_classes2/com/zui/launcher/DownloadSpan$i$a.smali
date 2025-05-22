.class Lcom/zui/launcher/DownloadSpan$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan$i;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadSpan$i;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan$i;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$i$a;->a:Lcom/zui/launcher/DownloadSpan$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$i$a;->a:Lcom/zui/launcher/DownloadSpan$i;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$i;->a:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan;->n(Lcom/zui/launcher/DownloadSpan;)V

    return-void
.end method

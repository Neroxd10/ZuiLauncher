.class Lcom/zui/launcher/DownloadSpan$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan$b;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/NetworkInfo;

.field final synthetic b:Lcom/zui/launcher/DownloadSpan$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan$b;Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$b$a;->b:Lcom/zui/launcher/DownloadSpan$b;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$b$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$b$a;->b:Lcom/zui/launcher/DownloadSpan$b;

    iget-object v1, v0, Lcom/zui/launcher/DownloadSpan$b;->c:Lcom/zui/launcher/DownloadSpan;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$b$a;->a:Landroid/net/NetworkInfo;

    iget-object v2, v0, Lcom/zui/launcher/DownloadSpan$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v0, v0, Lcom/zui/launcher/DownloadSpan$b;->b:Ljava/lang/String;

    invoke-static {v1, p0, v2, v0}, Lcom/zui/launcher/DownloadSpan;->s(Lcom/zui/launcher/DownloadSpan;Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    return-void
.end method

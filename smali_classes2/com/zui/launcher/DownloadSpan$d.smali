.class Lcom/zui/launcher/DownloadSpan$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->checkWifi(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$d;->a:Lcom/zui/launcher/DownloadSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$d;->a:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->m(Lcom/zui/launcher/DownloadSpan;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$d;->a:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan;->t(Lcom/zui/launcher/DownloadSpan;)V

    return-void
.end method

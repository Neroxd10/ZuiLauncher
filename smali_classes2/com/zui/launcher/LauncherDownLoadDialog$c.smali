.class Lcom/zui/launcher/LauncherDownLoadDialog$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherDownLoadDialog;->a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Lzui/app/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/LauncherDownLoadDialog;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iput-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iget-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->a:Lcom/zui/launcher/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/LauncherDownLoadDialog;->commitFirstShowDailog(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/LauncherDownLoadDialog;

    iget-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog$c;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->addAutoDownload(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

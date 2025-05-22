.class Lcom/zui/launcher/LauncherDownLoadDialog$b;
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

    iput-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iput-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iget-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/LauncherDownLoadDialog;->startDownLoadSingleApp(Lcom/zui/launcher/Launcher;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog$b;->a:Lcom/zui/launcher/Launcher;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/LauncherDownLoadDialog;->commitFirstShowDailog(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/LauncherDownLoadDialog;

    return-void
.end method

.class Lcom/zui/launcher/Launcher$s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->V0(Landroid/os/Bundle;)Lzui/app/MessageDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$s0;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/Launcher$s0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/Launcher;->G(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/DownloadSpan;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$s0;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->G(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DownloadSpan;->startTask()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

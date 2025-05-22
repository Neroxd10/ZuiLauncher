.class Lcom/zui/launcher/Launcher$t0;
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
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$t0;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$t0;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/zui/launcher/Launcher$t0;->a:Landroid/os/Bundle;

    const-string v0, "key_action_type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/Launcher$t0;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$t0;->a:Landroid/os/Bundle;

    const-string v1, "key_packageName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v0}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

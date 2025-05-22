.class public Lcom/zui/launcher/proxy/ProxyActivityStarter;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final EXTRA_PARAMS:Ljava/lang/String; = "start-activity-params"


# instance fields
.field private a:Lcom/zui/launcher/proxy/StartActivityParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Lcom/zui/launcher/proxy/StartActivityParams;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zui/launcher/proxy/ProxyActivityStarter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "start-activity-params"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const p1, 0x10208000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/proxy/ProxyActivityStarter;->a:Lcom/zui/launcher/proxy/StartActivityParams;

    iget v1, v0, Lcom/zui/launcher/proxy/StartActivityParams;->requestCode:I

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, p0, p2, p3}, Lcom/zui/launcher/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start-activity-params"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/proxy/StartActivityParams;

    iput-object v1, p0, Lcom/zui/launcher/proxy/ProxyActivityStarter;->a:Lcom/zui/launcher/proxy/StartActivityParams;

    if-nez v1, :cond_0

    const-string p1, "ProxyActivityStarter"

    const-string v0, "Proxy activity started without params"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, v1, Lcom/zui/launcher/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget v0, v1, Lcom/zui/launcher/proxy/StartActivityParams;->requestCode:I

    iget-object v1, v1, Lcom/zui/launcher/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_2
    iget-object v3, v1, Lcom/zui/launcher/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    if-eqz v3, :cond_3

    const/4 p1, 0x0

    :try_start_0
    iget v4, v1, Lcom/zui/launcher/proxy/StartActivityParams;->requestCode:I

    iget-object v5, v1, Lcom/zui/launcher/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iget v6, v1, Lcom/zui/launcher/proxy/StartActivityParams;->flagsMask:I

    iget v7, v1, Lcom/zui/launcher/proxy/StartActivityParams;->flagsValues:I

    iget v8, v1, Lcom/zui/launcher/proxy/StartActivityParams;->extraFlags:I

    iget-object v9, v1, Lcom/zui/launcher/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    iget-object v1, p0, Lcom/zui/launcher/proxy/ProxyActivityStarter;->a:Lcom/zui/launcher/proxy/StartActivityParams;

    invoke-virtual {v1, p0, v0, p1}, Lcom/zui/launcher/proxy/StartActivityParams;->deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

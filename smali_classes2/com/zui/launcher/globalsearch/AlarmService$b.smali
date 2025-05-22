.class Lcom/zui/launcher/globalsearch/AlarmService$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/AlarmService;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AlarmService;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AlarmService$b;->a:Lcom/zui/launcher/globalsearch/AlarmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmService  onReceive  action -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    const-string v0, "com.zui.launcher.close_service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AlarmService$b;->a:Lcom/zui/launcher/globalsearch/AlarmService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string p0, "com.zui.launcher.globalsearch.AlarmService"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AlarmService  serviceWork -->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

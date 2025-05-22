.class Lcom/zui/launcher/LauncherRecommend$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherRecommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherRecommend;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherRecommend;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, -0x66

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 p1, -0xb

    if-eq v1, p1, :cond_2

    const/4 p1, -0x4

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    const/4 p1, -0x1

    if-ge v1, p1, :cond_4

    if-eqz v0, :cond_4

    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSTALL_FAILED!! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p1, v0}, Lcom/zui/launcher/LauncherRecommend;->g(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const v1, 0x7f120405

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSTALL_SUCCEEDED!! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherRecommend;->removeTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSTALL_FAILED_INSUFFICIENT_STORAGE!! "

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast v0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSTALL_FAILED_DEXOPT!! "

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherRecommend;->g(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v0}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    invoke-static {v1}, Lcom/zui/launcher/LauncherRecommend;->a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    const v2, 0x7f120403

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend$b;->a:Lcom/zui/launcher/LauncherRecommend;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->h(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

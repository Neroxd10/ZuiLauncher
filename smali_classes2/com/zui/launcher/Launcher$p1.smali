.class Lcom/zui/launcher/Launcher$p1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zui/launcher/model/LocateItem;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "zdx1"

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "LocateHandler, process MSG_LOCATE_APP----From search"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->B1:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->g0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_1
    const-string p1, "LocateHandler, process MSG_SCROLL_FOLDER_IN_HOTSEAT"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->B1:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->f0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_2
    const-string p1, "LocateHandler, process MSG_OPEN_FOLDER_IN_HOTSEAT"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->B1:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->e0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_3
    const-string p1, "LocateHandler, process MSG_SCROLL_FOLDER_IN_WORKSPACE"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->B1:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->d0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_4
    const-string p1, "LocateHandler, process MSG_OPEN_FOLDER_IN_WORKSPACE"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$p1;->a:Lcom/zui/launcher/Launcher;

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->B1:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/zui/launcher/Launcher;->c0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V

    :cond_5
    :goto_0
    return-void
.end method

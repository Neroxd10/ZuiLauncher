.class public Lcom/zui/launcher/Launcher$ContentObserverHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentObserverHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$ContentObserverHandler;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "badge"

    const-string v0, "ContentObserverHandler MSG_ID_QUERY_WECHAT"

    invoke-static {p1, v0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$ContentObserverHandler;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->C(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dot/ZuiDotDataListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher$ContentObserverHandler;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->C(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dot/ZuiDotDataListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->onZuiDotDataChanged()V

    :cond_1
    :goto_0
    return-void
.end method

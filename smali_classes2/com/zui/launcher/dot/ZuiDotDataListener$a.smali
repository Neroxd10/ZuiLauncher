.class Lcom/zui/launcher/dot/ZuiDotDataListener$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/dot/ZuiDotDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/dot/ZuiDotDataListener;


# direct methods
.method constructor <init>(Lcom/zui/launcher/dot/ZuiDotDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$a;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$a;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {v0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->a(Lcom/zui/launcher/dot/ZuiDotDataListener;)Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$a;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {v0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->a(Lcom/zui/launcher/dot/ZuiDotDataListener;)Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;->queryZuiDotData()V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$a;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {p0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->b(Lcom/zui/launcher/dot/ZuiDotDataListener;)Landroid/os/Handler;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

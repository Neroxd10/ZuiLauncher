.class Lcom/zui/launcher/dot/ZuiDotDataListener$b;
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

    iput-object p1, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$b;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$b;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {p1}, Lcom/zui/launcher/dot/ZuiDotDataListener;->a(Lcom/zui/launcher/dot/ZuiDotDataListener;)Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener$b;->a:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {p0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->a(Lcom/zui/launcher/dot/ZuiDotDataListener;)Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;->onZuiDotDataChanged()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/zui/launcher/dot/ZuiDotDataListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/os/Handler$Callback;

.field private e:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/dot/ZuiDotDataListener$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/dot/ZuiDotDataListener$a;-><init>(Lcom/zui/launcher/dot/ZuiDotDataListener;)V

    iput-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->d:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/zui/launcher/dot/ZuiDotDataListener$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/dot/ZuiDotDataListener$b;-><init>(Lcom/zui/launcher/dot/ZuiDotDataListener;)V

    iput-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->e:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->d:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->e:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/dot/ZuiDotDataListener;)Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->a:Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/dot/ZuiDotDataListener;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onZuiDotDataChanged()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->b:Landroid/os/Handler;

    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeDotDataChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->a:Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    return-void
.end method

.method public setDotDataChangedListener(Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dot/ZuiDotDataListener;->a:Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;

    invoke-virtual {p0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->onZuiDotDataChanged()V

    return-void
.end method

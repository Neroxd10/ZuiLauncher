.class Lcom/lenovo/weathercenterSDK/AppManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/AppManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/AppManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$a;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$a;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    const/16 v0, 0xbbb

    invoke-static {p1, v0}, Lcom/lenovo/weathercenterSDK/AppManager;->a(Lcom/lenovo/weathercenterSDK/AppManager;I)I

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/AppManager$a;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/AppManager;->b(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0xe

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$a;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/AppManager;->b(Lcom/lenovo/weathercenterSDK/AppManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/AppManager$a;->a:Lcom/lenovo/weathercenterSDK/AppManager;

    const/16 p1, 0xbb9

    invoke-static {p0, p1}, Lcom/lenovo/weathercenterSDK/AppManager;->a(Lcom/lenovo/weathercenterSDK/AppManager;I)I

    return-void
.end method

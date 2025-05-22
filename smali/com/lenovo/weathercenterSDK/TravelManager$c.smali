.class Lcom/lenovo/weathercenterSDK/TravelManager$c;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/TravelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/weathercenterSDK/TravelManager;


# direct methods
.method constructor <init>(Lcom/lenovo/weathercenterSDK/TravelManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v0, 0x7d5

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v0, 0x7d4

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v0, 0x7d3

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v0, 0x7d2

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    const/16 v0, 0x7d1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/lenovo/weathercenterSDK/TravelManager;->g(Lcom/lenovo/weathercenterSDK/TravelManager;Landroid/os/Message;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_1

    return-void

    :cond_1
    check-cast p1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {p1}, Lcom/lenovo/weathercenter/ITravelData$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/weathercenter/ITravelData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/weathercenterSDK/TravelManager;->b(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenter/ITravelData;)Lcom/lenovo/weathercenter/ITravelData;

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/TravelManager;->e(Lcom/lenovo/weathercenterSDK/TravelManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/TravelManager;->a(Lcom/lenovo/weathercenterSDK/TravelManager;)Lcom/lenovo/weathercenter/ITravelData;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->i(Lcom/lenovo/weathercenterSDK/TravelManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$c;->a:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/TravelManager;->h(Lcom/lenovo/weathercenterSDK/TravelManager;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

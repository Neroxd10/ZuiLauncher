.class final Lcom/amap/api/col/l3s/oa$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/oa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/oa;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/oa;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p1, p1, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p1, p1, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ok;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "resultsUpdated"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p1, p1, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p0, p0, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :cond_4
    :try_start_2
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p1, p1, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/oa$a;->a:Lcom/amap/api/col/l3s/oa;

    iget-object p0, p0, Lcom/amap/api/col/l3s/oa;->c:Lcom/amap/api/col/l3s/ok;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ok;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "Aps"

    const-string p2, "onReceive"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ow;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

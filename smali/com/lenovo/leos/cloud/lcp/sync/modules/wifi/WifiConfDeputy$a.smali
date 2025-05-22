.class Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

.field b:Z

.field c:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    return-void
.end method

.method public static c()Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.lenovo.leos.cloud.deputy"

    const-string v3, "com.lenovo.leos.cloud.deputy.setting.SettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.lenovo.leos.cloud.deputy.setting.ILcpSettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const-string v2, "WIFICONF"

    if-eqz v1, :cond_0

    const-string v1, " LCPSettings service bind success, waiting for connect"

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b:Z

    return-object v0

    :cond_0
    const-string v0, " LCPSettings service bind failed"

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 5

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b:Z

    const-string p0, "WIFICONF"

    const-string v2, "5 sec later, binded ILcpSettings service still NOT be connected.  "

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;->getWifiOn()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;->getWifiScanAlwaysEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;->setWifiOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method g(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;->setWifiScanAlwaysEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    const-string p1, "WIFICONF"

    const-string p2, "Connect to ILcpSettings service"

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->a:Lcom/lenovo/leos/cloud/deputy/setting/ILcpSettings;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b:Z

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiConfSysSettings"
.end annotation


# static fields
.field static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->b()V

    :cond_0
    return-void
.end method

.method public static open()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->c()Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static prepareDeputy()V
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy;->prepareDeputy()V

    return-void
.end method

.method public static wifiOn(Z)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static wifiOn()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->d()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static wifiScanAlwaysEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static wifiScanAlwaysEnabled()Z
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/Misc$WifiConfSysSettings;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfDeputy$a;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

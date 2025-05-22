.class Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

.field b:Z


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/wificfg/WifiConf;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/wifi/WifiConfSyncTask$a;->b:Z

    return-void
.end method

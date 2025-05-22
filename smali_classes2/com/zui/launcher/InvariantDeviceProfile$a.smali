.class Lcom/zui/launcher/InvariantDeviceProfile$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/InvariantDeviceProfile;


# direct methods
.method constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/InvariantDeviceProfile$a;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "android.intent.action.OVERLAY_CHANGED"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-static {v0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$a;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-static {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->a(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    return-void
.end method

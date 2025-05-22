.class Lcom/zui/quickstep/SysUINavigationMode$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/SysUINavigationMode;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/SysUINavigationMode;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/SysUINavigationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/SysUINavigationMode$a;->a:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/SysUINavigationMode$a;->a:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->a(Lcom/zui/quickstep/SysUINavigationMode;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/SysUINavigationMode$a;->a:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-static {p2}, Lcom/zui/quickstep/SysUINavigationMode;->b(Lcom/zui/quickstep/SysUINavigationMode;)V

    iget-object p2, p0, Lcom/zui/quickstep/SysUINavigationMode$a;->a:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-static {p2}, Lcom/zui/quickstep/SysUINavigationMode;->a(Lcom/zui/quickstep/SysUINavigationMode;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p2

    if-eq p2, p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/SysUINavigationMode$a;->a:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->c(Lcom/zui/quickstep/SysUINavigationMode;)V

    :cond_0
    return-void
.end method

.class Lcom/zui/quickstep/OverviewComponentObserver$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OverviewComponentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/OverviewComponentObserver;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OverviewComponentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OverviewComponentObserver$a;->a:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver$a;->a:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-static {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->a(Lcom/zui/quickstep/OverviewComponentObserver;)V

    :cond_0
    return-void
.end method

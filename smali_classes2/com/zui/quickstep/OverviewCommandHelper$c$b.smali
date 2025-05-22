.class Lcom/zui/quickstep/OverviewCommandHelper$c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/OverviewCommandHelper$c;->c(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/BaseRecentsView;

.field final synthetic b:Lcom/zui/quickstep/OverviewCommandHelper$c;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper$c;Lcom/zui/quickstep/BaseRecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$b;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    iput-object p2, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$b;->a:Lcom/zui/quickstep/BaseRecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$b;->a:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->showNextTask()V

    iget-object v0, p0, Lcom/zui/quickstep/OverviewCommandHelper$c$b;->b:Lcom/zui/quickstep/OverviewCommandHelper$c;

    iget-object v0, v0, Lcom/zui/quickstep/OverviewCommandHelper$c;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCommandHelper;->g(Lcom/zui/quickstep/OverviewCommandHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

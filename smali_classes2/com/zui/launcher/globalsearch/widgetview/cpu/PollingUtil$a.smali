.class Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->startPolling(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:J

.field final synthetic c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->a:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->c:Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil$a;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->a(Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;Ljava/lang/Runnable;J)V

    return-void
.end method

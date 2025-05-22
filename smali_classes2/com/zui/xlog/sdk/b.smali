.class Lcom/zui/xlog/sdk/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    iput-object p2, p0, Lcom/zui/xlog/sdk/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/xlog/sdk/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/xlog/sdk/b;->c:Ljava/lang/String;

    iput p5, p0, Lcom/zui/xlog/sdk/b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->b(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object v3

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->i(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v6

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->j(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->k(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v8

    iget-object v2, p0, Lcom/zui/xlog/sdk/b;->e:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v2}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->l(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v9

    iget-object v10, p0, Lcom/zui/xlog/sdk/b;->a:Ljava/lang/String;

    iget-object v11, p0, Lcom/zui/xlog/sdk/b;->b:Ljava/lang/String;

    iget-object v12, p0, Lcom/zui/xlog/sdk/b;->c:Ljava/lang/String;

    iget v13, p0, Lcom/zui/xlog/sdk/b;->d:I

    invoke-interface/range {v3 .. v13}, Lcom/zui/xlog/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const-string p0, "ExAnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnalytics.trackEventWithKey time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/xlog/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public final synthetic Lcom/zui/launcher/util/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/ConfigMonitor;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/ConfigMonitor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/c;->a:Lcom/zui/launcher/util/ConfigMonitor;

    iput-object p2, p0, Lcom/zui/launcher/util/c;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/c;->a:Lcom/zui/launcher/util/ConfigMonitor;

    iget-object p0, p0, Lcom/zui/launcher/util/c;->b:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/ConfigMonitor;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

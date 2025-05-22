.class public final synthetic Lcom/zui/launcher/icons/cache/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/cache/HandlerRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/cache/HandlerRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/a;->a:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/a;->a:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->onEnd()V

    return-void
.end method

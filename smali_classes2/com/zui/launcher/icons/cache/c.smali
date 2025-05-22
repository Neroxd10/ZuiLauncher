.class public final synthetic Lcom/zui/launcher/icons/cache/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/cache/HandlerRunnable;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/cache/HandlerRunnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/c;->a:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    iput-object p2, p0, Lcom/zui/launcher/icons/cache/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/c;->a:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->b(Ljava/lang/Object;)V

    return-void
.end method

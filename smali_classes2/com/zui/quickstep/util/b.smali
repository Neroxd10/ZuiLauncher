.class public final synthetic Lcom/zui/quickstep/util/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/CancellableTask;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/CancellableTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/b;->a:Lcom/zui/quickstep/util/CancellableTask;

    iput-object p2, p0, Lcom/zui/quickstep/util/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/b;->a:Lcom/zui/quickstep/util/CancellableTask;

    iget-object p0, p0, Lcom/zui/quickstep/util/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/CancellableTask;->a(Ljava/lang/Object;)V

    return-void
.end method

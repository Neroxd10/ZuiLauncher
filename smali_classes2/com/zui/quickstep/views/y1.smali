.class public final synthetic Lcom/zui/quickstep/views/y1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/y1;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/quickstep/views/y1;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/y1;->a:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/quickstep/views/y1;->b:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/zui/quickstep/views/TaskView;->a0(Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

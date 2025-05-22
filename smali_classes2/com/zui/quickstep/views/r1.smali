.class public final synthetic Lcom/zui/quickstep/views/r1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/r1;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/zui/quickstep/views/r1;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/r1;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/zui/quickstep/views/r1;->b:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/zui/quickstep/views/TaskView;->c0(Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Boolean;)V

    return-void
.end method

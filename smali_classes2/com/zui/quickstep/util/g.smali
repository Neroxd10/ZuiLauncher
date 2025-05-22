.class public final synthetic Lcom/zui/quickstep/util/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/g;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/zui/quickstep/util/g;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/g;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/zui/quickstep/util/g;->b:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->h(Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

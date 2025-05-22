.class public final synthetic Lcom/zui/quickstep/util/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/o0;->a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/o0;->a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->onApplyMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

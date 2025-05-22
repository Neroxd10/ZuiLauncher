.class public final synthetic Lcom/zui/quickstep/inputconsumers/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/c;->a:Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/c;->a:Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p0}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;->e(Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;)V

    return-void
.end method

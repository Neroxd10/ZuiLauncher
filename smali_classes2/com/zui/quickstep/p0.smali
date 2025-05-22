.class public final synthetic Lcom/zui/quickstep/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/p0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/p0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->x()V

    return-void
.end method

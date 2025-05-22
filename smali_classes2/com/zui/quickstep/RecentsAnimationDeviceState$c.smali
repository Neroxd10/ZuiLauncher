.class Lcom/zui/quickstep/RecentsAnimationDeviceState$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsAnimationDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$c;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$c;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$c;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)V

    return-void
.end method

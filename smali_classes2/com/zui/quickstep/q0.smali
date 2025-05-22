.class public final synthetic Lcom/zui/quickstep/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field public final synthetic b:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/q0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iput-object p2, p0, Lcom/zui/quickstep/q0;->b:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/q0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object p0, p0, Lcom/zui/quickstep/q0;->b:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-void
.end method

.class public final synthetic Lcom/zui/quickstep/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/o0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/o0;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->w(Z)V

    return-void
.end method

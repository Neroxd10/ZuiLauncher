.class public final synthetic Lcom/zui/launcher/f2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

.field public final synthetic b:Lcom/zui/quickstep/util/RemoteAnimationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Lcom/zui/quickstep/util/RemoteAnimationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/f2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/zui/launcher/f2;->b:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/f2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/f2;->b:Lcom/zui/quickstep/util/RemoteAnimationProvider;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->w(Lcom/zui/quickstep/util/RemoteAnimationProvider;)V

    return-void
.end method

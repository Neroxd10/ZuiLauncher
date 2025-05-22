.class Lcom/zui/launcher/allapps/DiscoveryBounce$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/DiscoveryBounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/DiscoveryBounce;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/DiscoveryBounce;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$a;->a:Lcom/zui/launcher/allapps/DiscoveryBounce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$a;->a:Lcom/zui/launcher/allapps/DiscoveryBounce;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/DiscoveryBounce;->handleClose(Z)V

    return-void
.end method

.class Lcom/zui/launcher/allapps/DiscoveryBounce$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/DiscoveryBounce;-><init>(Lcom/zui/launcher/Launcher;F)V
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

    iput-object p1, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$b;->a:Lcom/zui/launcher/allapps/DiscoveryBounce;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/DiscoveryBounce$b;->a:Lcom/zui/launcher/allapps/DiscoveryBounce;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/DiscoveryBounce;->handleClose(Z)V

    return-void
.end method

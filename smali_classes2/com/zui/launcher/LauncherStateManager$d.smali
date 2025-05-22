.class Lcom/zui/launcher/LauncherStateManager$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherStateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherStateManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherStateManager$d;->b:Lcom/zui/launcher/LauncherStateManager;

    iput p2, p0, Lcom/zui/launcher/LauncherStateManager$d;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/LauncherStateManager$d;->b:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {p1}, Lcom/zui/launcher/LauncherStateManager;->e(Lcom/zui/launcher/LauncherStateManager;)[Landroid/animation/Animator;

    move-result-object p1

    iget p0, p0, Lcom/zui/launcher/LauncherStateManager$d;->a:I

    const/4 v0, 0x0

    aput-object v0, p1, p0

    return-void
.end method

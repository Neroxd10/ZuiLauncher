.class Lcom/zui/launcher/Launcher$z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->B0(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$z;->c:Lcom/zui/launcher/Launcher;

    iput-boolean p2, p0, Lcom/zui/launcher/Launcher$z;->a:Z

    iput p3, p0, Lcom/zui/launcher/Launcher$z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/Launcher$z;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->z(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/EditViewPanel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$z;->c:Lcom/zui/launcher/Launcher;

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher$z;->a:Z

    iget p0, p0, Lcom/zui/launcher/Launcher$z;->b:I

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/Launcher;->A(Lcom/zui/launcher/Launcher;ZI)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

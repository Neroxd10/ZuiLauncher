.class Lcom/zui/quickstep/views/LiveTileOverlay$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/LiveTileOverlay;->startIconAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/LiveTileOverlay;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/LiveTileOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/LiveTileOverlay$b;->a:Lcom/zui/quickstep/views/LiveTileOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/LiveTileOverlay$b;->a:Lcom/zui/quickstep/views/LiveTileOverlay;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/LiveTileOverlay;->c(Lcom/zui/quickstep/views/LiveTileOverlay;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

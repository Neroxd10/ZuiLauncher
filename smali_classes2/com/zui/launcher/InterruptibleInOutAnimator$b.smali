.class Lcom/zui/launcher/InterruptibleInOutAnimator$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/InterruptibleInOutAnimator;-><init>(JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/zui/launcher/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator$b;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InterruptibleInOutAnimator$b;->a:Lcom/zui/launcher/InterruptibleInOutAnimator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/InterruptibleInOutAnimator;->h:I

    return-void
.end method

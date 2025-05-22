.class Lcom/zui/launcher/views/AbstractSlideInView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/AbstractSlideInView;->handleClose(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/AbstractSlideInView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/AbstractSlideInView$c;->a:Lcom/zui/launcher/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/AbstractSlideInView$c;->a:Lcom/zui/launcher/views/AbstractSlideInView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/AbstractSlideInView;->onCloseComplete()V

    return-void
.end method

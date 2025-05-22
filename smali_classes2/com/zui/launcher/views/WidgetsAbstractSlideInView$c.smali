.class Lcom/zui/launcher/views/WidgetsAbstractSlideInView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->handleClose(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/views/WidgetsAbstractSlideInView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$c;->a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$c;->a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;

    invoke-virtual {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->onCloseComplete()V

    return-void
.end method

.class Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/views/WidgetsAbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;->a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;->a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;

    iget-object p1, p1, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->mSwipeDetector:Lcom/zui/launcher/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/zui/launcher/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/zui/launcher/views/WidgetsAbstractSlideInView$b;->a:Lcom/zui/launcher/views/WidgetsAbstractSlideInView;

    invoke-static {p0}, Lcom/zui/launcher/views/WidgetsAbstractSlideInView;->a(Lcom/zui/launcher/views/WidgetsAbstractSlideInView;)V

    return-void
.end method

.class public Lcom/zui/launcher/FirstFrameAnimatorHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/FirstFrameAnimatorHelper$b;
    }
.end annotation


# static fields
.field private static b:J

.field private static c:Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/FirstFrameAnimatorHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b()J
    .locals 2

    sget-wide v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b:J

    return-wide v0
.end method

.method static synthetic c()J
    .locals 4

    sget-wide v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b:J

    return-wide v0
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->c:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/FirstFrameAnimatorHelper;->c:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    new-instance v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$a;

    invoke-direct {v0}, Lcom/zui/launcher/FirstFrameAnimatorHelper$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->c:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->c:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public static setIsVisible(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/ValueAnimator;",
            ">(TT;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/FirstFrameAnimatorHelper$b;-><init>(Lcom/zui/launcher/FirstFrameAnimatorHelper;Lcom/zui/launcher/FirstFrameAnimatorHelper$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public onDraw()V
    .locals 4

    sget-wide v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->b:J

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/FirstFrameAnimatorHelper;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

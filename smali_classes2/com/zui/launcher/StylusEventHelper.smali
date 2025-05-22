.class public Lcom/zui/launcher/StylusEventHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

.field private final d:F


# direct methods
.method public constructor <init>(Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/StylusEventHelper;->c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

    iput-object p2, p0, Lcom/zui/launcher/StylusEventHelper;->b:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/StylusEventHelper;->d:F

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public inStylusButtonPressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {p1}, Lcom/zui/launcher/StylusEventHelper;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/StylusEventHelper;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/zui/launcher/StylusEventHelper;->d:F

    invoke-static {v1, v4, v5, v6}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    iget-object p0, p0, Lcom/zui/launcher/StylusEventHelper;->c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;->onPressed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iget-boolean v1, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    iget-object p0, p0, Lcom/zui/launcher/StylusEventHelper;->c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;->onReleased(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    iget-boolean v0, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    iget-object p0, p0, Lcom/zui/launcher/StylusEventHelper;->c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;->onReleased(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    iput-boolean v0, p0, Lcom/zui/launcher/StylusEventHelper;->a:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/StylusEventHelper;->c:Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;->onPressed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v2
.end method

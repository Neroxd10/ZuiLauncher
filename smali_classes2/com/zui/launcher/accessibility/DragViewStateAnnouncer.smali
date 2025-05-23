.class public Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    return-void
.end method

.method public static createFor(Landroid/view/View;)Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;

    invoke-direct {v0, p0}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public announce(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public completeAction(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->cancel()V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/accessibility/DragViewStateAnnouncer;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

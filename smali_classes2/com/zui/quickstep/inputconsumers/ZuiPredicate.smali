.class public Lcom/zui/quickstep/inputconsumers/ZuiPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/views/BaseDragLayer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/views/BaseDragLayer;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->b:Z

    return-void
.end method


# virtual methods
.method public test(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/BaseDragLayer;

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->b:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->proxyTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/inputconsumers/ZuiPredicate;->test(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

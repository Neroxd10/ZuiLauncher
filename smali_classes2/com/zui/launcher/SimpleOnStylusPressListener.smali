.class public Lcom/zui/launcher/SimpleOnStylusPressListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/SimpleOnStylusPressListener;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onPressed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/SimpleOnStylusPressListener;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/SimpleOnStylusPressListener;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onReleased(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

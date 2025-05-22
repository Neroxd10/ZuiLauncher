.class Lcom/zui/quickstep/views/RecentsView$h;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView$h;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$h;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isExternalMode(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$h;->a:Lcom/zui/quickstep/views/RecentsView;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->v(Lcom/zui/quickstep/views/RecentsView;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->w(Lcom/zui/quickstep/views/RecentsView;)V

    :goto_0
    return-void
.end method

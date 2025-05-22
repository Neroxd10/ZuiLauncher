.class Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/XWidgetsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/XWidgetsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-static {p1}, Lcom/zui/launcher/widget/XWidgetsBottomSheet;->c(Lcom/zui/launcher/widget/XWidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/zui/launcher/widget/XWidgetsBottomSheet$b;->a:Lcom/zui/launcher/widget/XWidgetsBottomSheet;

    invoke-static {p0}, Lcom/zui/launcher/widget/XWidgetsBottomSheet;->c(Lcom/zui/launcher/widget/XWidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

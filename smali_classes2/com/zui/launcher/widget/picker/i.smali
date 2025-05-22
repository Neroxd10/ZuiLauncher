.class public final synthetic Lcom/zui/launcher/widget/picker/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/i;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/i;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

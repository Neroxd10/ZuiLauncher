.class public final synthetic Lcom/zui/launcher/widget/picker/common/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/WidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/WidgetCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/common/c;->a:Lcom/zui/launcher/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/common/c;->a:Lcom/zui/launcher/widget/WidgetCell;

    invoke-static {p0, p1}, Lcom/zui/launcher/widget/picker/common/CommonAdapter;->c(Lcom/zui/launcher/widget/WidgetCell;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/zui/launcher/widget/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

.field public final synthetic b:Landroid/widget/TableRow;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;Landroid/widget/TableRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/j;->a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

    iput-object p2, p0, Lcom/zui/launcher/widget/j;->b:Landroid/widget/TableRow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/j;->a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

    iget-object p0, p0, Lcom/zui/launcher/widget/j;->b:Landroid/widget/TableRow;

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->f(Landroid/widget/TableRow;Lcom/zui/launcher/model/WidgetItem;)V

    return-void
.end method

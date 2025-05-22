.class public final synthetic Lcom/zui/launcher/widget/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

.field public final synthetic b:Landroid/widget/TableLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/WidgetsBottomSheet;Landroid/widget/TableLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/i;->a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

    iput-object p2, p0, Lcom/zui/launcher/widget/i;->b:Landroid/widget/TableLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/i;->a:Lcom/zui/launcher/widget/WidgetsBottomSheet;

    iget-object p0, p0, Lcom/zui/launcher/widget/i;->b:Landroid/widget/TableLayout;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/widget/WidgetsBottomSheet;->g(Landroid/widget/TableLayout;Ljava/util/ArrayList;)V

    return-void
.end method

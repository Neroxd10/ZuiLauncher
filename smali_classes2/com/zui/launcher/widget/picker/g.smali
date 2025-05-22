.class public final synthetic Lcom/zui/launcher/widget/picker/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

.field public final synthetic b:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/g;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/g;->b:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/g;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/g;->b:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->y(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;Landroid/view/View;)V

    return-void
.end method

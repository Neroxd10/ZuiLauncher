.class public final synthetic Lcom/zui/launcher/widget/picker/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsListHeader;

.field public final synthetic b:Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsListHeader;Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/y;->a:Lcom/zui/launcher/widget/picker/WidgetsListHeader;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/y;->b:Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/y;->a:Lcom/zui/launcher/widget/picker/WidgetsListHeader;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/y;->b:Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->e(Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;Landroid/view/View;)V

    return-void
.end method

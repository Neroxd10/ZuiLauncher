.class public final synthetic Lcom/zui/launcher/widget/picker/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/n;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/n;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->p(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    move-result-object p0

    return-object p0
.end method

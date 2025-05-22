.class public final synthetic Lcom/zui/launcher/widget/picker/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/o;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/o;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->s(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

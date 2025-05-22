.class public final synthetic Lcom/zui/launcher/widget/picker/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/b;->a:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/b;->a:Ljava/util/function/Predicate;

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->o(Ljava/util/function/Predicate;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

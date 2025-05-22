.class public final synthetic Lcom/zui/launcher/widget/picker/search/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/search/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/d;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/d;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->e(Ljava/lang/String;Ljava/util/ArrayList;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)V

    return-void
.end method

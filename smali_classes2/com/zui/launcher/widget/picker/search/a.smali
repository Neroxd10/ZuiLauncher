.class public final synthetic Lcom/zui/launcher/widget/picker/search/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/search/a;->b:Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/a;->b:Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;->c(Ljava/lang/String;Lcom/zui/launcher/search/StringMatcherUtility$StringMatcher;Lcom/zui/launcher/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

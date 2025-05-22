.class public final synthetic Lcom/zui/launcher/popup/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/g;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/g;->a:Ljava/util/HashMap;

    check-cast p1, Lcom/zui/launcher/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->l(Ljava/util/HashMap;Lcom/zui/launcher/util/ComponentKey;)Lcom/zui/launcher/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

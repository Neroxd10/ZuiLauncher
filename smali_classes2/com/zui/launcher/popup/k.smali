.class public final synthetic Lcom/zui/launcher/popup/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/k;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/k;->a:Ljava/util/HashMap;

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->e(Ljava/util/HashMap;Lcom/zui/launcher/model/WidgetItem;)V

    return-void
.end method

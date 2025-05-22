.class public final synthetic Lcom/zui/launcher/model/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/WidgetsModel;

.field public final synthetic b:Lcom/zui/launcher/model/WidgetsModel$b;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/WidgetsModel;Lcom/zui/launcher/model/WidgetsModel$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/t1;->a:Lcom/zui/launcher/model/WidgetsModel;

    iput-object p2, p0, Lcom/zui/launcher/model/t1;->b:Lcom/zui/launcher/model/WidgetsModel$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/t1;->a:Lcom/zui/launcher/model/WidgetsModel;

    iget-object p0, p0, Lcom/zui/launcher/model/t1;->b:Lcom/zui/launcher/model/WidgetsModel$b;

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/model/WidgetsModel;->d(Lcom/zui/launcher/model/WidgetsModel$b;Lcom/zui/launcher/model/WidgetItem;)Lcom/zui/launcher/model/PackageItemInfo;

    move-result-object p0

    return-object p0
.end method

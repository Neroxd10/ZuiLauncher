.class public final synthetic Lcom/zui/launcher/model/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/s1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/s1;->a:Ljava/util/Map;

    check-cast p1, Lcom/zui/launcher/model/PackageItemInfo;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/model/WidgetsModel;->c(Ljava/util/Map;Lcom/zui/launcher/model/PackageItemInfo;Ljava/util/List;)V

    return-void
.end method

.class final Lcom/zui/launcher/model/WidgetsModel$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/model/WidgetsModel$c;",
            "Lcom/zui/launcher/model/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetsModel$b;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/model/WidgetsModel$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/WidgetsModel$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/zui/launcher/model/WidgetsModel$c;)Lcom/zui/launcher/model/PackageItemInfo;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/WidgetsModel$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/PackageItemInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, p1, Lcom/zui/launcher/model/WidgetsModel$c;->a:Ljava/lang/String;

    iget v2, p1, Lcom/zui/launcher/model/WidgetsModel$c;->b:I

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/zui/launcher/model/WidgetsModel$c;->c:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetsModel$b;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method b()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/zui/launcher/model/PackageItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetsModel$b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

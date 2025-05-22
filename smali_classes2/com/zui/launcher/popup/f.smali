.class public final synthetic Lcom/zui/launcher/popup/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/f;->a:Lcom/zui/launcher/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/f;->a:Lcom/zui/launcher/util/PackageUserKey;

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->h(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

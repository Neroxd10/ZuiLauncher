.class public final synthetic Lcom/zui/launcher/widget/picker/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/picker/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/picker/w;

    invoke-direct {v0}, Lcom/zui/launcher/widget/picker/w;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/picker/w;->a:Lcom/zui/launcher/widget/picker/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->i(Lcom/zui/launcher/model/PackageItemInfo;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object p0

    return-object p0
.end method

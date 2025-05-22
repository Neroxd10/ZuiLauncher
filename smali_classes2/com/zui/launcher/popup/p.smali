.class public final synthetic Lcom/zui/launcher/popup/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/popup/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/p;

    invoke-direct {v0}, Lcom/zui/launcher/popup/p;-><init>()V

    sput-object v0, Lcom/zui/launcher/popup/p;->a:Lcom/zui/launcher/popup/p;

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

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupDataProvider;->i(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

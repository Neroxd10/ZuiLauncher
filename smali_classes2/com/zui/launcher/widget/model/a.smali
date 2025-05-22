.class public final synthetic Lcom/zui/launcher/widget/model/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/model/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/model/a;

    invoke-direct {v0}, Lcom/zui/launcher/widget/model/a;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/model/a;->a:Lcom/zui/launcher/widget/model/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {p1}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a(Lcom/zui/launcher/model/WidgetItem;)Z

    move-result p0

    return p0
.end method

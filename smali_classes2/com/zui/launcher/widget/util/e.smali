.class public final synthetic Lcom/zui/launcher/widget/util/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/util/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/util/e;

    invoke-direct {v0}, Lcom/zui/launcher/widget/util/e;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/util/e;->a:Lcom/zui/launcher/widget/util/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    check-cast p2, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {p1, p2}, Lcom/zui/launcher/widget/util/WidgetsTableUtils;->b(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/model/WidgetItem;)I

    move-result p0

    return p0
.end method

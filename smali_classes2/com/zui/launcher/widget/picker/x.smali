.class public final synthetic Lcom/zui/launcher/widget/picker/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/picker/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/picker/x;

    invoke-direct {v0}, Lcom/zui/launcher/widget/picker/x;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/picker/x;->a:Lcom/zui/launcher/widget/picker/x;

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

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsListAdapter;->g(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

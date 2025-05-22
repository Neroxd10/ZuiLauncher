.class public final synthetic Lcom/zui/launcher/widget/picker/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/picker/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/picker/z;

    invoke-direct {v0}, Lcom/zui/launcher/widget/picker/z;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/picker/z;->a:Lcom/zui/launcher/widget/picker/z;

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

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->f(Lcom/zui/launcher/model/WidgetItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

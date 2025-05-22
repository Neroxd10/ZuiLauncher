.class public final synthetic Lcom/zui/launcher/widget/picker/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/picker/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/picker/p;

    invoke-direct {v0}, Lcom/zui/launcher/widget/picker/p;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/picker/p;->a:Lcom/zui/launcher/widget/picker/p;

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

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/zui/launcher/model/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/model/p0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/p0;

    invoke-direct {v0}, Lcom/zui/launcher/model/p0;-><init>()V

    sput-object v0, Lcom/zui/launcher/model/p0;->a:Lcom/zui/launcher/model/p0;

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

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-static {p1}, Lcom/zui/launcher/model/ModelUtils;->b(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

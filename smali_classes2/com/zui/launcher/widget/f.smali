.class public final synthetic Lcom/zui/launcher/widget/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/f;

    invoke-direct {v0}, Lcom/zui/launcher/widget/f;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/f;->a:Lcom/zui/launcher/widget/f;

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

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/zui/launcher/widget/CachingWidgetPreviewLoader;->b(Ljava/util/Map;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

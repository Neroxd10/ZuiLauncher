.class public final synthetic Lcom/zui/launcher/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/e;

    invoke-direct {v0}, Lcom/zui/launcher/e;-><init>()V

    sput-object v0, Lcom/zui/launcher/e;->a:Lcom/zui/launcher/e;

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

    check-cast p1, Lcom/zui/launcher/AppInfo;

    check-cast p2, Lcom/zui/launcher/AppInfo;

    invoke-static {p1, p2}, Lcom/zui/launcher/AppInfo;->a(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/zui/quickstep/util/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/util/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/util/t;

    invoke-direct {v0}, Lcom/zui/quickstep/util/t;-><init>()V

    sput-object v0, Lcom/zui/quickstep/util/t;->a:Lcom/zui/quickstep/util/t;

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

    check-cast p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    invoke-static {p1}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->a(Lcom/zui/quickstep/SysUINavigationMode$Mode;)Z

    move-result p0

    return p0
.end method

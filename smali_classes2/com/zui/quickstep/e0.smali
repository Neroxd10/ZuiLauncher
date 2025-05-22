.class public final synthetic Lcom/zui/quickstep/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/e0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/e0;

    invoke-direct {v0}, Lcom/zui/quickstep/e0;-><init>()V

    sput-object v0, Lcom/zui/quickstep/e0;->a:Lcom/zui/quickstep/e0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/zui/quickstep/OverviewInteractionState;->e(Landroid/content/Context;)Lcom/zui/quickstep/OverviewInteractionState;

    move-result-object p0

    return-object p0
.end method

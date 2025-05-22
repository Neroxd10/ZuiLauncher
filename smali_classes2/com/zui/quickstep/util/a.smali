.class public final synthetic Lcom/zui/quickstep/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/util/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/util/a;

    invoke-direct {v0}, Lcom/zui/quickstep/util/a;-><init>()V

    sput-object v0, Lcom/zui/quickstep/util/a;->a:Lcom/zui/quickstep/util/a;

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

    new-instance p0, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/util/ProtoTracer;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.class public final synthetic Lcom/zui/launcher/util/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/util/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/j;

    invoke-direct {v0}, Lcom/zui/launcher/util/j;-><init>()V

    sput-object v0, Lcom/zui/launcher/util/j;->a:Lcom/zui/launcher/util/j;

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

    invoke-static {p1}, Lcom/zui/launcher/util/DynamicResource;->a(Landroid/content/Context;)Lcom/zui/launcher/util/DynamicResource;

    move-result-object p0

    return-object p0
.end method

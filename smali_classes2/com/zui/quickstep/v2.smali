.class public final synthetic Lcom/zui/quickstep/v2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/v2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/v2;

    invoke-direct {v0}, Lcom/zui/quickstep/v2;-><init>()V

    sput-object v0, Lcom/zui/quickstep/v2;->a:Lcom/zui/quickstep/v2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    invoke-static {}, Lcom/zui/quickstep/ViewUtils;->a()Z

    move-result p0

    return p0
.end method

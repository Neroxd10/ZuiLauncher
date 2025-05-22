.class public final synthetic Lcom/zui/quickstep/i3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/i3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/i3;

    invoke-direct {v0}, Lcom/zui/quickstep/i3;-><init>()V

    sput-object v0, Lcom/zui/quickstep/i3;->a:Lcom/zui/quickstep/i3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

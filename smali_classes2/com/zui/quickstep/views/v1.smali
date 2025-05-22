.class public final synthetic Lcom/zui/quickstep/views/v1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/views/v1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/views/v1;

    invoke-direct {v0}, Lcom/zui/quickstep/views/v1;-><init>()V

    sput-object v0, Lcom/zui/quickstep/views/v1;->a:Lcom/zui/quickstep/views/v1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/zui/quickstep/views/TaskView;->i0(Ljava/lang/Integer;)V

    return-void
.end method

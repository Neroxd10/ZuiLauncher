.class public final synthetic Lcom/zui/quickstep/inputconsumers/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/inputconsumers/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/inputconsumers/f;

    invoke-direct {v0}, Lcom/zui/quickstep/inputconsumers/f;-><init>()V

    sput-object v0, Lcom/zui/quickstep/inputconsumers/f;->a:Lcom/zui/quickstep/inputconsumers/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    invoke-static {}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->a()I

    move-result p0

    return p0
.end method

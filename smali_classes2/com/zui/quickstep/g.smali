.class public final synthetic Lcom/zui/quickstep/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/g;

    invoke-direct {v0}, Lcom/zui/quickstep/g;-><init>()V

    sput-object v0, Lcom/zui/quickstep/g;->a:Lcom/zui/quickstep/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/zui/quickstep/AnimatedFloat;->c()V

    return-void
.end method

.class public final synthetic Lcom/zui/quickstep/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/c0;

    invoke-direct {v0}, Lcom/zui/quickstep/c0;-><init>()V

    sput-object v0, Lcom/zui/quickstep/c0;->a:Lcom/zui/quickstep/c0;

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

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/zui/quickstep/OverviewComponentObserver;->d(Ljava/lang/Boolean;)V

    return-void
.end method

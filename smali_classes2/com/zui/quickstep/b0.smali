.class public final synthetic Lcom/zui/quickstep/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/b0;

    invoke-direct {v0}, Lcom/zui/quickstep/b0;-><init>()V

    sput-object v0, Lcom/zui/quickstep/b0;->a:Lcom/zui/quickstep/b0;

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

    invoke-static {}, Lcom/zui/quickstep/OverviewCommandHelper;->i()V

    return-void
.end method

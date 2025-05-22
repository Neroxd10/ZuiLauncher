.class public final synthetic Lcom/zui/launcher/icons/cache/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/icons/cache/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/icons/cache/d;

    invoke-direct {v0}, Lcom/zui/launcher/icons/cache/d;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/cache/d;->a:Lcom/zui/launcher/icons/cache/d;

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

    invoke-static {}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->a()V

    return-void
.end method

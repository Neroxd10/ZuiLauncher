.class public final synthetic Lcom/zui/launcher/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/d;

    invoke-direct {v0}, Lcom/zui/launcher/d;-><init>()V

    sput-object v0, Lcom/zui/launcher/d;->a:Lcom/zui/launcher/d;

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

    check-cast p1, Lcom/zui/launcher/AppInfo;

    invoke-static {p1}, Lcom/zui/launcher/AllAppsList;->d(Lcom/zui/launcher/AppInfo;)V

    return-void
.end method

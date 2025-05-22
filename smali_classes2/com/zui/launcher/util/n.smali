.class public final synthetic Lcom/zui/launcher/util/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/FlagOp;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/util/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/n;

    invoke-direct {v0}, Lcom/zui/launcher/util/n;-><init>()V

    sput-object v0, Lcom/zui/launcher/util/n;->a:Lcom/zui/launcher/util/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/util/FlagOp;->b(I)I

    move-result p0

    return p0
.end method

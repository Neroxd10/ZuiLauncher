.class public final synthetic Lcom/zui/launcher/notification/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/notification/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/notification/c;

    invoke-direct {v0}, Lcom/zui/launcher/notification/c;-><init>()V

    sput-object v0, Lcom/zui/launcher/notification/c;->a:Lcom/zui/launcher/notification/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/notification/NotificationKeyData;->c(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

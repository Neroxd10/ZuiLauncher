.class public final synthetic Lcom/zui/launcher/networksdk/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/networksdk/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/networksdk/c;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/c;-><init>()V

    sput-object v0, Lcom/zui/launcher/networksdk/c;->a:Lcom/zui/launcher/networksdk/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/networksdk/DownloadManager;->p(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

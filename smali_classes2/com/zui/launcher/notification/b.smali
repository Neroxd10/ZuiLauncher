.class public final synthetic Lcom/zui/launcher/notification/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/notification/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/notification/b;

    invoke-direct {v0}, Lcom/zui/launcher/notification/b;-><init>()V

    sput-object v0, Lcom/zui/launcher/notification/b;->a:Lcom/zui/launcher/notification/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/app/Person;

    invoke-static {p1}, Lcom/zui/launcher/notification/NotificationKeyData;->b(Landroid/app/Person;)Z

    move-result p0

    return p0
.end method

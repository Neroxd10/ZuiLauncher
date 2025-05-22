.class public final synthetic Lcom/zui/launcher/icons/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/icons/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/icons/q;

    invoke-direct {v0}, Lcom/zui/launcher/icons/q;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/q;->a:Lcom/zui/launcher/icons/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/zui/launcher/icons/IconCache;->w()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method

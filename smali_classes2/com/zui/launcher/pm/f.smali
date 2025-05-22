.class public final synthetic Lcom/zui/launcher/pm/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/pm/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/pm/f;

    invoke-direct {v0}, Lcom/zui/launcher/pm/f;-><init>()V

    sput-object v0, Lcom/zui/launcher/pm/f;->a:Lcom/zui/launcher/pm/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/zui/launcher/pm/InstallSessionHelper;

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/InstallSessionHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

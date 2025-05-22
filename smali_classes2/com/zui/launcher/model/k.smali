.class public final synthetic Lcom/zui/launcher/model/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/model/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/k;

    invoke-direct {v0}, Lcom/zui/launcher/model/k;-><init>()V

    sput-object v0, Lcom/zui/launcher/model/k;->a:Lcom/zui/launcher/model/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/model/BaseLoaderResults;->e(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method

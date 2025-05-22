.class public final synthetic Lcom/zui/launcher/model/h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/model/h0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/h0;

    invoke-direct {v0}, Lcom/zui/launcher/model/h0;-><init>()V

    sput-object v0, Lcom/zui/launcher/model/h0;->a:Lcom/zui/launcher/model/h0;

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

    invoke-static {p1}, Lcom/zui/launcher/model/LoaderResults;->p(Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method

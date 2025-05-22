.class public final synthetic Lcom/zui/launcher/model/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/model/o1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/o1;

    invoke-direct {v0}, Lcom/zui/launcher/model/o1;-><init>()V

    sput-object v0, Lcom/zui/launcher/model/o1;->a:Lcom/zui/launcher/model/o1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/shortcuts/ShortcutKey;

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

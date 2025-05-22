.class public final synthetic Lcom/zui/launcher/widget/util/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/zui/launcher/widget/util/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/util/b;

    invoke-direct {v0}, Lcom/zui/launcher/widget/util/b;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/util/b;->a:Lcom/zui/launcher/widget/util/b;

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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

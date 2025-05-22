.class public final synthetic Lcom/zui/quickstep/w2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/zui/quickstep/w2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/w2;

    invoke-direct {v0}, Lcom/zui/quickstep/w2;-><init>()V

    sput-object v0, Lcom/zui/quickstep/w2;->a:Lcom/zui/quickstep/w2;

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

    new-instance p0, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

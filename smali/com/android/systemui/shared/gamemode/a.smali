.class public final synthetic Lcom/android/systemui/shared/gamemode/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/systemui/shared/gamemode/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/gamemode/a;

    invoke-direct {v0}, Lcom/android/systemui/shared/gamemode/a;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/gamemode/a;->a:Lcom/android/systemui/shared/gamemode/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a()V

    return-void
.end method

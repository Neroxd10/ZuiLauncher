.class Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    iget-object v1, v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->d:Lcom/android/systemui/shared/gamemode/GameUtils;

    iget-object v0, v0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->f:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->registerListener(Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$a;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    iget v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->mRegisterRetry:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->mRegisterRetry:I

    iget-object v0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

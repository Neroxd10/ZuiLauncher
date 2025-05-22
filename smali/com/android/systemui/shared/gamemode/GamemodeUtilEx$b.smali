.class Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;


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

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    const-string v0, "GameUtils"

    const-string v1, "onGameAppStart: GestrueView INVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onDoublePowerClicked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->enterGameMode(Z)V

    return-void
.end method

.method public onGameAppExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->enterGameMode(Z)V

    return-void
.end method

.method public onGameAppStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->c:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/shared/gamemode/a;->a:Lcom/android/systemui/shared/gamemode/a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLauncherGoForegroundEx()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx$b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->enterGameMode(Z)V

    return-void
.end method

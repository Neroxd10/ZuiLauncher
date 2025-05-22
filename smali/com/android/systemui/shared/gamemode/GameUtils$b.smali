.class Lcom/android/systemui/shared/gamemode/GameUtils$b;
.super Landroid/app/IZuiGameAppStateListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/gamemode/GameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/shared/gamemode/GameUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/gamemode/GameUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GameUtils$b;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    invoke-direct {p0}, Landroid/app/IZuiGameAppStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameAppExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "GameUtils"

    const-string v1, "onGameAppExit---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils$b;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;->onGameAppExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGameAppStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "GameUtils"

    const-string v1, "onGameAppStart---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils$b;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;->onGameAppStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/android/systemui/shared/gamemode/GameUtils$c;
.super Landroid/app/IZuiSystemMessageListener$Stub;
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

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GameUtils$c;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    invoke-direct {p0}, Landroid/app/IZuiSystemMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoublePowerClicked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoublePowerClicked---:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils$c;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;->onDoublePowerClicked(Z)V

    return-void
.end method

.method public onLauncherGoForeground()V
    .locals 2

    const-string v0, "GameUtils"

    const-string v1, "onLauncherGoForegroundEx---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils$c;->a:Lcom/android/systemui/shared/gamemode/GameUtils;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    invoke-interface {p0}, Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;->onLauncherGoForegroundEx()V

    return-void
.end method

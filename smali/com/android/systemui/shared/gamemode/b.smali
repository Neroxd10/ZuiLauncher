.class public final synthetic Lcom/android/systemui/shared/gamemode/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    iput-boolean p2, p0, Lcom/android/systemui/shared/gamemode/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/gamemode/b;->a:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    iget-boolean p0, p0, Lcom/android/systemui/shared/gamemode/b;->b:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->a(Z)V

    return-void
.end method

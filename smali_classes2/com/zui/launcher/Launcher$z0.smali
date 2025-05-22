.class Lcom/zui/launcher/Launcher$z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Launcher$e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->rebindRecommendWidget([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$z0;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$z0;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$z0;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$z0;->a:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->rebindRecommendWidget([Ljava/lang/String;)V

    return-void
.end method

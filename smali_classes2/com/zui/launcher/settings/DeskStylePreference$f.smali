.class Lcom/zui/launcher/settings/DeskStylePreference$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/settings/DeskStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/DeskStylePreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/settings/DeskStylePreference$f;->b:Z

    iput-object p4, p0, Lcom/zui/launcher/settings/DeskStylePreference$f;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/zui/launcher/settings/DeskStylePreference$f;->b:Z

    return-void
.end method

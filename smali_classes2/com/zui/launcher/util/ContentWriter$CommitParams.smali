.class public final Lcom/zui/launcher/util/ContentWriter$CommitParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/ContentWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommitParams"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Ljava/lang/String;

.field final c:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/ContentWriter$CommitParams;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/zui/launcher/util/ContentWriter$CommitParams;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/util/ContentWriter$CommitParams;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/zui/launcher/util/ContentWriter$CommitParams;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
